import { Template } from 'meteor/templating';
import { GeneratedFile } from '../../collections/fileCollection';
import { generateFormData, alert, setFileDescription } from "./utils";

import "./Stats.html";

Template.Stats.onCreated(function() {
    alert();
    Meteor.subscribe('files.csvs.all');
    Meteor.subscribe('generatedfile');
});

Template.Stats.helpers({
    reportLink() {
        return GeneratedFile.findOne({}, {_id: "Report-PDF"});
    }
});

Template.Stats.events({
    "submit #stats-form": function(event, template) {
        let form = event.target;
        let data = JSON.stringify($(event.target).serializeArray());

        generateFormData(form, data, "stats");

        return false;
    },
    "change .filestyle": function(event) {
        setFileDescription(event);
    }
});
