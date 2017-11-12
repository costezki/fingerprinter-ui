import {StatsReportParameters, FingerprinterProgress} from '/imports/collections/reportSchemas';
import {uploadFiles, setFileDescription, updateProgress} from './utils';

import './Stats.html';

const uuid = require('uuid');

Template.Stats.onCreated(function () {
    Meteor.subscribe('fingerprinterProgress');

    this.startedFingerprinter = new ReactiveVar(void 0);
    this.currentSession = new ReactiveVar(void 0);
});

Template.Stats.helpers({
    statsSchema() {
        return StatsReportParameters;
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

Template.Stats.events({
    'submit #statsForm': function (event, template) {
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
                alphaFile: 'alpha'
            };

            uploadFiles(form.alphaFile.files, template, function (path) {
                formData.alphaFilePath = path;
                formData.progressId = sessionId;

                updateProgress(sessionId, {alphaFile: 'done'});

                Meteor.call('generateStatsReport', formData, (err) => {
                    if (err) console.error(err);
                });
            });
        });
    },
    'change #alphaFile': (e) => {
        setFileDescription(e);
    },
    'click #download-report': (event, template) => {
        FingerprinterProgress.remove(template.currentSession.get(), (err) => {
            if (err) throw new Error(err);

            template.currentSession.set(void 0);

            location.reload();
        });
    }
});
