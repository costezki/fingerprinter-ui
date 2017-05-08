import { Meteor } from 'meteor/meteor';
import { Template } from 'meteor/templating';
import { ReactiveVar } from 'meteor/reactive-var';
import { DiffReportParameters, FingerprinterProgress } from '/imports/collections/reportSchemas';
import { uploadFiles, setFileDescription, updateProgress } from './utils';

import './Diff.html';

let uuid = require('node-uuid');

Template.Diff.onCreated(function () {
    Meteor.subscribe('fingerprinterProgress');

    this.startedFingerprinter = new ReactiveVar( false );
});

Template.Diff.helpers({
    diffSchema(){
        return DiffReportParameters;
    },
    startedProgress() {
        return Template.instance().startedFingerprinter.get();
    },
    scriptRunning() {
        let progress = FingerprinterProgress.findOne({_id: Session.get('currentSession')});

        if (progress !== void 0) {
            if (progress.createLink == 'done') {
                return false;
            } else {
                return true;
            }
        } else {
            return true;
        }
    }
});

Template.Diff.events({
    'submit #diffForm': function (event, template) {
        event.preventDefault();
        template.startedFingerprinter.set( true );

        let form = event.target;
        let sessionId = uuid.v4();

        Session.set('currentSession', sessionId);

        Meteor.call('startFingerprinterProgress', { sessionId, formName: 'stats'}, (err, res) => {
            if (err) console.error(err);

            let formData = {
                alphaTitle: form.alphaTitle.value,
                alphaDescription: form.alphaDescription.value,
                alphaFile: 'alpha',

                betaTitle: form.betaTitle.value,
                betaDescription: form.betaDescription.value,
                betaFile: 'beta'
            };

            uploadFiles(form.alphaFile.files, template, function(path) {
                formData.alphaFilePath = path;

                updateProgress(sessionId, {alphaFile: 'done'});

                uploadFiles(form.betaFile.files, template, function(path) {
                    formData.betaFilePath = path;
                    formData.progressId = sessionId;

                    updateProgress(sessionId, {betaFile: 'done'});

                    Meteor.call('generateDiffReport', formData, (err, res) => {
                        if (err) console.error(err);
                    });
                });
            });
        });
    },
    "change #alphaFile": (event, template) => {
        setFileDescription(event);
    },
    "change #betaFile": (event, template) => {
        setFileDescription(event, 'diff');
    },
    'click #download-report': (e) => {
        FingerprinterProgress.remove({_id: Session.get('currentSession')}, (err) => {
            if (err) throw new Error(err);
            Session.set(undefined);
            location.reload();
        });
    }
});
