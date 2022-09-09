import axios from "axios";
import * as bson from "bson";
import * as cheerio from "cheerio";
import { Item, ItemTags, tagsFromAttr } from "../item";
import { Save } from "../../save";

type Arg = { name: string; type: string; description: string | null };
type Ret = { name: string; type: string; description: string | null };

export class GlobalItem implements Item {
	arguments: Arg[] = [];
	returns: Ret[] = [];
	description: string | null = null;

	constructor(readonly name: string, readonly tags = ItemTags.None) {}

	emmylua() {
		let buf = this.description ? `--[[${this.description}]]\n` : "";
		this.arguments.forEach(
			(x) =>
				(buf += `---@param ${x.name} ${
					x.type
				} # ${x.description?.replaceAll("\n", "<br/>")}\n`)
		);
		this.returns.forEach(
			(x) =>
				(buf += `---@return ${x.type} ${
					x.name
				}# ${x.description?.replaceAll("\n", "<br/>")}\n`)
		);

		buf += `function ${this.name}(${this.arguments
			.map((x) => x.name)
			.join(", ")}) end`;

		return buf;
	}

	save(save: Save) {
		save.globals.push({
			name: this.name,
			out: this.emmylua()
		});

		return true;
	}
}

function parseGlobalsPage(html: string, item: GlobalItem) {
	const $ = cheerio.load(html);

	item.description = $("div.description_section")?.html();

	const arguments_section = $("div.function_arguments");

	if (arguments_section) {
		// Has arguments
		for (const div_arg of arguments_section.children()) {
			const arg = $(div_arg);

			item.arguments.push({
				name: arg.find("span.name").first().text(),
				type: arg.find("a").first().text(),
				description: arg.find("div.numbertagindent")?.first()?.html(),
			});
		}
	}

	const returns_section = $("div.function_returns");
	if (returns_section) {
		// Has return values
		for (const div_return of returns_section.children()) {
			const ret = $(div_return);

			item.returns.push({
				name: ret.find("span.name").first().text(),
				type: ret.find("a").first().text(),
				description: ret.find("div.numbertagindent")?.first()?.html(),
			});
		}
	}

	return item;
}

export function handleGlobalsPage(section: string, requests: Promise<Item>[]) {
	// Not sure what the "amb" is for..?
	const Global = /<a class="cm ([^"]+)" href="([^"]+)"[^>]+>(\w+)<\/a>/g;

	for (const glob of section.matchAll(Global)!) {
		const tags = tagsFromAttr(glob[1]);
		const link = glob[2];
		const name = glob[3];

		const full_link = WIKI_ENDPOINT + link;
		if (!(tags & ItemTags.Function)) continue;

		requests.push(
			axios
				.get(full_link)
				.then((x) => parseGlobalsPage(x.data, new GlobalItem(name)))
		);
	}
}
