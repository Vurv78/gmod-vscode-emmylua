// Allow saving documentation scrapes
import * as bson from "bson";
import { Item } from "./generator/item";

export class Save {
	globals: object[] = [];
	enums: object[] = [];

	version = { major: 1, minor: 0, patch: 0 };
	time: Date;

	constructor() {
		this.time = new Date();
	}

	addItem(item: Item) {
		item.save(this);
	}

	output() {
		return bson.serialize({
			time: Date.now(),
			version: this.version,
			globals: this.globals,
			enums: this.enums
		});
	}
}