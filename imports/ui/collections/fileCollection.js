import { FilesCollection } from 'meteor/ostrio:files';

export const Csvs = new FilesCollection({
  storagePath: "/home/lordgarod/temp/uploads",
  downloadRoute: "/home/lordgarod/temp/reports",
  collectionName: 'Csvs',
  permissions: 0755,
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

if (Meteor.isClient) {
  Meteor.subscribe('files.csvs.all');
}

if (Meteor.isServer) {
  Meteor.publish('files.csvs.all', function () {
    return Csvs.find().cursor;
  });
}
