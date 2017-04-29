import "./Stats.html";
import {Template} from 'meteor/templating';
import {StatsReportParameters} from "../../collections/reportSchemas";
import {Csvs} from "../../collections/fileCollection";
import {uploadFile} from "./utils";


Template.Stats.onCreated(function () {
    Meteor.subscribe('files.csvs.all');
    this.currentUpload = new ReactiveVar(false);
});

Template.Stats.helpers({
    statsSchema(){
        return StatsReportParameters;
    },
    currentUpload(){
        return Template.instance().currentUpload.get();
    },
    currentAlphaFilePath(){
        // return Template.instance().alphaFilePath.get();
        return Session.get("alphaFilePath") || "foo";
    },
    reportReference(){
        return Csvs.findOne({_id: Session.get("reportReferenceFileId")}, {});
    }
});

Template.Stats.events({
    "submit #statsForm": function (event) {
        event.preventDefault();
        let form = event.target;
        const formData = {
            alphaTitle: form.alphaTitle.value,
            alphaDescription: form.alphaDescription.value,
            alphaFile: form.alphaFile.value,
            alphaFilePath: form.alphaFilePath.value
        };
        Meteor.call("generateStatsReport", formData, (err, res) => {
            if (err) console.error(err);
            console.log(res);
            Session.set("reportReferenceFileId",res.fileCursor._id);
        });
    },
    "change #alphaFile": (e, template) => {
        uploadFile(e, template, "alphaFilePath");
    }
});

let hooksObject = {
    beginSubmit: function() {
        Session.set("reportReferenceFileId",null);
    },
    endSubmit: function() {
    }
};
AutoForm.addHooks(["statsForm"],hooksObject);
