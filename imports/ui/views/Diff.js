import "./Diff.html";
import {Template} from 'meteor/templating';
import {DiffReportParameters} from "../../collections/reportSchemas";
import {Csvs} from "../../collections/fileCollection";
import {uploadFile, serverIdle, serverWorking} from "./utils";

Template.Diff.onCreated(function () {
    Meteor.subscribe('files.csvs.all');
    this.currentUpload = new ReactiveVar(false);
    Session.set("reportReferenceFileId", null);
});

Template.Diff.onRendered(function () {
    serverIdle();
});

Template.Diff.helpers({
    diffSchema(){
        return DiffReportParameters;
    },
    currentUpload: function () {
        return Template.instance().currentUpload.get();
    },
    currentAlphaFilePath(){
        return Session.get("alphaFilePath");
    },
    currentBetaFilePath(){
        return Session.get("betaFilePath");
    },
    reportReference(){
        return Csvs.findOne({_id: Session.get("reportReferenceFileId")}, {});
    }
});

Template.Diff.events({
    "submit #diffForm": function (event) {
        event.preventDefault();
        let form = event.target;
        const formData = {
            alphaTitle: form.alphaTitle.value,
            alphaDescription: form.alphaDescription.value,
            alphaFile: form.alphaFile.value,
            alphaFilePath: form.alphaFilePath.value,

            betaTitle: form.betaTitle.value,
            betaDescription: form.betaDescription.value,
            betaFile: form.betaFile.value,
            betaFilePath: form.betaFilePath.value
        };
        Meteor.call("generateDiffReport", formData, (err, res) => {
            if (err) console.error(err);
            serverIdle();
            Session.set("reportReferenceFileId", res.fileCursor._id);
        });
    },
    "change #alphaFile": (e, template) => {
        uploadFile(e, template, "alphaFilePath")
    },
    "change #betaFile": (e, template) => {
        uploadFile(e, template, "betaFilePath")
    }
});

let hooksObject = {
    beginSubmit: function () {
        Session.set("reportReferenceFileId", null);
        serverWorking();
    },
    endSubmit: function () {
    }
};
AutoForm.addHooks(["diffForm"], hooksObject);