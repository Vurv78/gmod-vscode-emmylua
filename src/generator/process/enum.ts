import axios from "axios";
import * as cheerio from "cheerio";
import { Item, ItemTags, tagsFromAttr } from "../item";
import { Save } from "../../save";

type EnumField = { index: string; value: string; description: string | null };

export class EnumItem implements Item {
	fields: EnumField[] = [];
	description: string | null = null;
	table: boolean = false; // Whether the enum is actually a proper table enum. (Enum.XYZ rather than Enum_XYZ)

	constructor(readonly name: string, readonly tags = ItemTags.None) {}

	emmylua() {
		if (this.table) {
			return (
				`${this.name} = {}\n` +
				this.fields
					.map(
						(x) =>
							`${
								this.description
									? `--[[${x.description}]]\n`
									: ""
							}${x.index} = ${x.value}`
					)
					.join("\n")
			);
		} else {
			return this.fields
				.map(
					(x) =>
						`${this.description ? `--[[${x.description}]]\n` : ""}${
							x.index
						} = ${x.value}`
				)
				.join("\n");
		}
	}

	save(save: Save) {
		save.enums.push({
			name: this.name,
			out: this.emmylua()
		});

		return true;
	}
}

const OR_RGX = /(\w+)\s+or\s+(\w+)/;
export function parseEnumPage(html: string, item: EnumItem) {
	const $ = cheerio.load(html);

	item.description = $("div.description_section")?.html();

	const values_tbl = $("tbody");
	if (values_tbl) {
		for (const trow of values_tbl.children()) {
			const cols = $(trow).find("td");

			const index = cols.first();
			const value = index.next();
			const desc = value.next();

			let index_text = index.text();
			let value_text = value.text();
			let desc_html = desc?.html();

			// Exception for "XYZ or ZYX"
			let or_result = index_text.match(OR_RGX);
			if (or_result) {
				index_text = or_result[1];
				item.fields.push({
					index: or_result[2],
					value: value_text,
					description: desc_html,
				});
			} else if (index_text.search(".")) {
				item.table = true;
			}

			item.fields.push({
				index: index_text,
				value: value_text,
				description: desc_html,
			});
		}
	}

	return item;
}

export function handleEnumPage(section: string, requests: Promise<Item>[]) {
	const Enum = /<a class="cm ([^"]+)" href="([^"]+)"[^>]+>(\w+)<\/a>/g;
	for (const entry of section.matchAll(Enum)!) {
		const tags = tagsFromAttr(entry[1]);
		const link = entry[2];
		const name = entry[3];

		const full_link = WIKI_ENDPOINT + link;
		if (!(tags & ItemTags.Enum))
			throw "Failed to parse proper enum attributes";

		requests.push(
			axios
				.get(full_link)
				.then((r) => parseEnumPage(r.data, new EnumItem(name)))
		);
	}
}
