import {Csvs} from "../imports/collections/fileCollection";

Csvs.allow({
    insert: () => {
        return true;
    },
    update: () => {
        return true;
    },
    remove: () => {
        return true;
    },
});