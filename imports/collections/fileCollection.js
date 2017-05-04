import { FilesCollection } from 'meteor/ostrio:files';

let uploads = Meteor.settings.public.path.uploads;
var _0774 = parseInt('0774', 8);
export const Csvs = new FilesCollection({
    debug:false,
    storagePath: uploads,
    downloadRoute: "/downloads",
    collectionName: 'csvs',
    permissions: _0774,
    parentDirPermissions: _0774,
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
