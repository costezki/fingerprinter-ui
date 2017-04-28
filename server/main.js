import { Meteor } from 'meteor/meteor';
import "../imports/mdg/validatedMethods";
// import { Csvs, GeneratedFile } from '../imports/collections/fileCollection';

// let expandHomeDir = require('expand-home-dir');
//
// let mkdirp = require('mkdirp');

Meteor.startup(() => {
    // code to run on server at startup

    // Meteor.settings.path.uploads = expandHomeDir(Meteor.settings.path.uploads);
    // Meteor.settings.path.reports = expandHomeDir(Meteor.settings.path.reports);
    //
    // let pathArray = ["uploads", "reports"];
    // pathArray.forEach(function(item, index, array) {
    //     mkdirp(Meteor.settings.path[item], function (err) {
    //         if (err) console.error(err);
    //     });
    // });
});
