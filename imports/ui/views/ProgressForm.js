import { Meteor } from 'meteor/meteor';
import { Template } from 'meteor/templating';
import { Csvs } from '/imports/collections/fileCollection';
import { FingerprinterProgress } from '/imports/collections/reportSchemas';

import './ProgressForm.html';

Template.ProgressForm.onCreated(function() {
	Meteor.subscribe('files.csvs.all');
});

Template.ProgressForm.helpers({
	progress() {
		return FingerprinterProgress.find();
	},
	report() {
		let report = Csvs.findOne({meta: {sessionId: Session.get('currentSession')}});
		if (report !== void 0) {
			return report;
		}
	}
});

Template.ProgressForm.events({

});

Template.registerHelper('done', function(done) {
	if (done == 'done') {
		return true;
	} else {
		return false;
	}
});
