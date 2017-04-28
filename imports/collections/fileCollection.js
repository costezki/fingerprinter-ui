import { FilesCollection } from 'meteor/ostrio:files';

// let uploads = expandHomeDir(Meteor.settings.path.uploads);
// console.log( JSON.stringify(Meteor.settings) );
 let uploads = Meteor.settings.public.path.uploads;
// let uploads = "/uploads";
let reports = Meteor.settings.public.path.reports;
// let reports = Meteor.settings.path.reports;
// let reports = "/reports";

export const Csvs = new FilesCollection({
    debug:true,
    storagePath: uploads,
    downloadRoute: "/downloads",
    collectionName: 'csvs',
    permissions: 777,
    allowClientCode: false, // Disallow remove files from Client
    onBeforeUpload: function (file) {
        // Allow upload files under 100MB, and only in csv formats
        if (file.size <= 104857600 ) // && /csv/i.test(file.extension)
        {
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
