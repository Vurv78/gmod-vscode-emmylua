import axios from "axios";
import BSON, { Long } from "bson";
import { SHARE_ENV } from "worker_threads";
import { HEADER } from "./hardcoded";
import { Item } from "./item";
import { handleEnumPage } from "./process/enum";
import { handleGlobalsPage } from "./process/global";
import { Save } from "../save";

export async function generate(): Promise<[string, Item[]]> {
	let buf = "---@meta\n" + HEADER + "\n";

	const response = await axios.get(GMOD_ENDPOINT);

	// Trim html to process less and use less memory
	let html = <string>response.data;
	html = html.substring(html.search("Developer Reference"));

	const ReferenceSection = /<details class="level1"\s*>(.+?)<\/details>/gs;
	const SectionName = /<\/i>(\w+) /; // The space is intentional

	const requests: Promise<Item>[] = [];

	for (const section_html of html.match(ReferenceSection)!) {
		const name = section_html.match(SectionName)![1];
		let i = 0;
		switch (name) {
			case "Globals":
				handleGlobalsPage(section_html, requests);
				break;
			case "Classes":
				break;
			case "Libraries":
				break;
			case "Panels":
				break;
			case "Hooks":
				break;
			case "Enums":
				handleEnumPage(section_html, requests);
				break;
			case "Structs":
				break;
			case "Shaders": // ignore
				break;

			default:
				console.warn(`Unrecognized reference panel? ${name}`);
				break;
		}
	}

	const len = requests.length;
	console.log(`# of requests: ${len}`);

	const items: Item[] = [];
	async function resolve(): Promise<void> {
		for (let i = 0; i < len; i += REQUEST_CHUNK_SIZE) {
			const chunk = requests.slice(i, i + REQUEST_CHUNK_SIZE);
			console.log(`Running chunk: ${i} to ${i + REQUEST_CHUNK_SIZE}`);

			await Promise.allSettled(chunk).then((out) => {
				for (const item of out) {
					if (item.status == "fulfilled") {
						buf += item.value.emmylua() + "\n";
						items.push(item.value);
					} else {
						console.error(item.reason);
					}
				}
			});
		}
	}

	await resolve();

	console.log(`Done!`);

	return [buf, items];
}
