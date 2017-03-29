import {Template} from 'meteor/templating';
// import { ReactiveVar } from 'meteor/reactive-var';
import { Csvs } from '../collections/fileCollection';

import "./MainLayout.html";
import "./Home.html";
import "./Stats.html";
import "./Diff.html";

import "../partials/partials";

import {generateFormData, alert} from "./utils";

Template.Footer.helpers({
    year() {
        return new Date().getFullYear();
    }
});

Template.Stats.onCreated(function() {
    alert();
});

Template.Stats.helpers({

});

Template.Stats.events({
    "submit #stats-form": function(event, template) {
        let form = event.target;
        let data = $(event.target).serializeArray();

        if (form["alpha-file"].files && form["alpha-file"].files[0]) {
			// We upload only one file, in case
			// multiple files were selected
			var upload = Csvs.insert({
				file: form["alpha-file"].files[0],
				streams: 'dynamic',
				chunkSize: 'dynamic'
			}, false);

			upload.on('start', function () {
				// template.currentUpload.set(this);
			});

			upload.on('end', function (error, fileObj) {
				if (error) {
					console.log('Error during upload: ' + error);
				} else {
					// console.log('File "' + fileObj.name + '" successfully uploaded');
                    generateFormData(form, data, fileObj._id, "stats");
				}
				// template.currentUpload.set(false);
			});

			upload.start();
		}
        return false;
    }
});

Template.Diff.onCreated(function() {
    alert();
});

Template.Diff.helpers({
});

Template.Diff.events({
    "click #generate-diff": function(event) {
        let form = event.target.parentNode.parentNode;
        generateFormData(form, "diff");
    }
});
