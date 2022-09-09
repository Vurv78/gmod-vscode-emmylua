import { Save } from "../save";

export const enum ItemTags {
	None = 0b0000000,

	Function = 0b00000001,
	Enum = 0b00000010,

	Server = 0b00000100,
	Client = 0b00001000,
	Menu = 0b00010000,

	Deprecated = 0b00100000,
	New = 0b01000000,
	Internal = 0b10000000,
}

export interface Item {
	emmylua(): string;
	save(save: Save): boolean;
}

export function tagsFromAttr(str: string) {
	let tags = ItemTags.None;

	for (const t of str.split(" ")) {
		switch (t) {
			case "f":
				tags |= ItemTags.Function;
				break;

			case "e":
				// I think this means it has a "view source" button inside of it.
				// Not sure, though.
				break

			case "code":
				// todo: find out wtf this is
				break

			case "enum":
				tags |= ItemTags.Enum;
				break;

			case "rc":
				tags |= ItemTags.Client;
				break;
			case "rs":
				tags |= ItemTags.Server;
				break;
			case "rm":
				tags |= ItemTags.Menu;
				break;

			case "depr":
				tags |= ItemTags.Deprecated;
				break;
			case "intrn":
				tags |= ItemTags.Internal;
				break;
			case "new":
				tags |= ItemTags.New;
				break;

			default:
			//console.log(`Unknown tag: ${t}`);
		}
	}

	return tags;
}