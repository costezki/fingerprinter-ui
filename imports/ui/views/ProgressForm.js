import {Csvs} from '/imports/collections/fileCollection';
import {FingerprinterProgress} from '/imports/collections/reportSchemas';

import './ProgressForm.html';

Template.ProgressForm.onCreated(function () {
    Meteor.subscribe('files.csvs.all');

    const parentView = Blaze.currentView.parentView.parentView;
    const parentInstance = parentView.templateInstance();
    // replace parentVariable with the name of the instance variable
    this.currentSession = new ReactiveVar(parentInstance.currentSession.get())
});

Template.ProgressForm.helpers({
    progress() {
        return FingerprinterProgress.find(Template.instance().currentSession.get());
    },
    report() {
        let report = Csvs.findOne({meta: {sessionId: Template.instance().currentSession.get()}});
        if (report !== void 0) return report;
    }
});

Template.ProgressForm.events({});

Template.registerHelper('done', function (done) {
    return done === 'done';
});
