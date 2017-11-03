import {Meteor} from 'meteor/meteor';
import {Template} from 'meteor/templating';
import {ReactiveVar} from 'meteor/reactive-var';
import {StatsReportParameters, FingerprinterProgress} from '/imports/collections/reportSchemas';
import {uploadFiles, setFileDescription, updateProgress} from './utils';

import './Stats.html';

let uuid = require('uuid');

Template.Stats.onCreated(function () {
    Meteor.subscribe('fingerprinterProgress');

    this.startedFingerprinter = new ReactiveVar(false);
});

Template.Stats.helpers({
    statsSchema() {
        return StatsReportParameters;
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

Template.Stats.events({
    'submit #statsForm': function (event, template) {
        event.preventDefault();
        template.startedFingerprinter.set(true);

        let form = event.target;
        let sessionId = uuid.v4();

        Session.set('currentSession', sessionId);

        Meteor.call('startFingerprinterProgress', {sessionId, formName: 'stats'}, (err, res) => {
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
    'change #alphaFile': (e, template) => {
        setFileDescription(e);
    },
    'click #download-report': (e) => {
        FingerprinterProgress.remove({_id: Session.get('currentSession')}, (err) => {
            if (err) throw new Error(err);
            Session.set(undefined);
            location.reload();
        });
    }
});
