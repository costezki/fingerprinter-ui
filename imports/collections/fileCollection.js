import {FilesCollection} from 'meteor/ostrio:files';

const uploads = Meteor.settings.public.path.uploads;

export const Csvs = new FilesCollection({
    debug: false,
    storagePath: uploads,
    downloadRoute: "/downloads",
    collectionName: 'csvs',
    permissions: 777,
    allowClientCode: false, // Disallow remove files from Client
    onBeforeUpload: function (file) {
        // Allow upload files under 100MB, and only in csv formats
        if (file.size <= 104857600) { // && /csv/i.test(file.extension)
            return true;
        } else {
            return 'Please upload csv, with size equal or less than 100MB';
        }
    }
});
