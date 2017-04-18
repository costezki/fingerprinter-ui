import { Meteor } from 'meteor/meteor';
import { generateJSON } from "../imports/mdg/validatedMethods";
import { Csvs, GeneratedFile } from '../imports/collections/fileCollection';

let mkdirp = require('mkdirp');

Meteor.startup(() => {
    // code to run on server at startup
    let pathArray = ["uploads", "reports"];
    pathArray.forEach(function(item, index, array) {
        mkdirp(Meteor.settings.public.path[item], function (err) {
            if (err) console.error(err);
        });
    });
});
