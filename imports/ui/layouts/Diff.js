import { Template } from 'meteor/templating';
import { Csvs, GeneratedFile } from '../../collections/fileCollection';
import { generateFormData, alert, setFileDescription } from "./utils";

import "./Diff.html";

Template.Diff.onCreated(function() {
    alert();
    Meteor.subscribe('files.csvs.all');
    Meteor.subscribe('generatedfile');
});

Template.Diff.helpers({
    reportLink() {
        return GeneratedFile.findOne({}, {_id: "Report-PDF"});
    },
    itDiff() {
        return true;
    }
});

Template.Diff.events({
    "submit #diff-form": function(event) {
        let form = event.target;
        let data = JSON.stringify($(event.target).serializeArray());

        generateFormData(form, data, "diff");

        return false;
    },
    "change .filestyle": function(event) {
        setFileDescription(event);
    }
});
