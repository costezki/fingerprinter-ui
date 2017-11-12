import {Csvs} from '/imports/collections/fileCollection';
import {FingerprinterProgress} from '/imports/collections/reportSchemas';

import './ProgressForm.html';

Template.ProgressForm.onCreated(function () {
    Meteor.subscribe('files.csvs.all');
});

Template.ProgressForm.helpers({
    progress() {
        return FingerprinterProgress.find(Template.instance().parent().currentSession.get());
    },
    report() {
        let report = Csvs.findOne({meta: {sessionId: Template.instance().parent().currentSession.get()}});
        if (report !== void 0) return report;
    }
});

Template.ProgressForm.events({});

Template.registerHelper('done', function (done) {
    return done === 'done';
});
