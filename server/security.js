import { Csvs } from "/imports/collections/fileCollection";
import { FingerprinterProgress } from "/imports/collections/reportSchemas";

let allow = {
    insert: () => {
        return true;
    },
    update: () => {
        return true;
    },
    remove: () => {
        return true;
    },
};

Csvs.allow(allow);
FingerprinterProgress.allow(allow);
