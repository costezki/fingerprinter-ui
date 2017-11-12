import {DiffReportParameters, FingerprinterProgress} from '/imports/collections/reportSchemas';
import {uploadFiles, setFileDescription, updateProgress} from './utils';

import './Diff.html';

const uuid = require('uuid');

Template.Diff.onCreated(function () {
    Meteor.subscribe('fingerprinterProgress');

    this.startedFingerprinter = new ReactiveVar(void 0);
    this.currentSession = new ReactiveVar(void 0);
});

Template.Diff.helpers({
    diffSchema() {
        return DiffReportParameters;
    },
    startedProgress() {
        return Template.instance().startedFingerprinter.get();
    },
    scriptRunning() {
        const currentSession = Template.instance().currentSession.get();

        if (currentSession !== void 0) {
            const progress = FingerprinterProgress.findOne(currentSession);

            if (progress !== void 0) {
                return progress.createLink !== 'done';
            } else {
                return true;
            }
        }
    }
});

Template.Diff.events({
    'submit #diffForm': function (event, template) {
        event.preventDefault();
        template.startedFingerprinter.set(true);

        const form = event.target;
        const sessionId = uuid.v4();

        template.currentSession.set(sessionId);

        Meteor.call('startFingerprinterProgress', {sessionId, formName: 'stats'}, (err) => {
            if (err) console.error(err);

            let formData = {
                alphaTitle: form.alphaTitle.value,
                alphaDescription: form.alphaDescription.value,
                alphaFile: 'alpha',

                betaTitle: form.betaTitle.value,
                betaDescription: form.betaDescription.value,
                betaFile: 'beta'
            };

            uploadFiles(form.alphaFile.files, template, function (path) {
                formData.alphaFilePath = path;

                updateProgress(sessionId, {alphaFile: 'done'});

                uploadFiles(form.betaFile.files, template, function (path) {
                    formData.betaFilePath = path;
                    formData.progressId = sessionId;

                    updateProgress(sessionId, {betaFile: 'done'});

                    Meteor.call('generateDiffReport', formData, (err) => {
                        if (err) console.error(err);
                    });
                });
            });
        });
    },
    "change #alphaFile": (event) => {
        setFileDescription(event);
    },
    "change #betaFile": (event) => {
        setFileDescription(event, 'diff');
    },
    'click #download-report': (event, template) => {
        FingerprinterProgress.remove(template.currentSession.get(), (err) => {
            if (err) throw new Error(err);

            template.currentSession.set(void 0);

            location.reload();
        });
    }
});
