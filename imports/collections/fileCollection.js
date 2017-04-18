import { FilesCollection } from 'meteor/ostrio:files';

// let expandHomeDir = require('expand-home-dir');

// let uploads = expandHomeDir(Meteor.settings.public.path.uploads);
let uploads = "/home/lordgarod/temp/uploads";
// let reports = expandHomeDir(Meteor.settings.public.path.reports);
let reports = "/home/lordgarod/temp/reports";

export const Csvs = new FilesCollection({
    storagePath: uploads,
    downloadRoute: "/downloads",
    collectionName: 'Csvs',
    permissions: 777,
    allowClientCode: false, // Disallow remove files from Client
    onBeforeUpload: function (file) {
        // Allow upload files under 100MB, and only in csv formats
        if (file.size <= 104857600 && /csv/i.test(file.extension)) {
            return true;
        } else {
            return 'Please upload csv, with size equal or less than 100MB';
        }
    }
});

export const GeneratedFile = new FilesCollection({
    storagePath: uploads,
    downloadRoute: "/downloads",
    debug: false, //false in production
    permissions: 777,
    collectionName: 'generatedfile',
    allowClientCode: false, // Disallow remove files from Client
});
