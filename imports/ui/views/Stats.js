import "./Stats.html";
import {Template} from 'meteor/templating';
import {StatsReportParameters} from "../../collections/reportSchemas";
import {Csvs} from "../../collections/fileCollection";
import {uploadFile, serverIdle, serverWorking} from "./utils";


Template.Stats.onCreated(function () {
    Meteor.subscribe('files.csvs.all');
    this.currentUpload = new ReactiveVar(false);
    Session.set("reportReferenceFileId", null);
});

Template.Stats.onRendered(function () {
    serverIdle();
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
        return Session.get("alphaFilePath") || "";
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
            serverIdle();
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
        serverWorking();
    },
    endSubmit: function() {
    }
};
AutoForm.addHooks(["statsForm"],hooksObject);
