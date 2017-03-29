// import { Meteor } from 'meteor/meteor';
// import { Template } from 'meteor/templating';
// import { ReactiveVar } from 'meteor/reactive-var';
// import { Csvs } from './fileCollection';

import "./UploadForm.html";

// Template.UploadForm.onCreated(function () {
// 	this.currentUpload = new ReactiveVar(false);
// });
//
// Template.UploadForm.helpers({
// 	currentUpload: function () {
// 		return Template.instance().currentUpload.get();
// 	}
// });
//
// Template.UploadForm.events({
// 	'change #fileInput': function (e, template) {
// 		if (e.currentTarget.files && e.currentTarget.files[0]) {
// 			// We upload only one file, in case
// 			// multiple files were selected
// 			var upload = Csvs.insert({
// 				file: e.currentTarget.files[0],
// 				streams: 'dynamic',
// 				chunkSize: 'dynamic'
// 			}, false);
//
// 			upload.on('start', function () {
// 				template.currentUpload.set(this);
// 			});
//
// 			upload.on('end', function (error, fileObj) {
// 				if (error) {
// 					console.log('Error during upload: ' + error);
// 				} else {
// 					console.log('File "' + fileObj.name + '" successfully uploaded');
// 					console.log(fileObj._id);
// 				}
// 				// template.currentUpload.set(false);
// 			});
//
// 			upload.start();
// 		}
// 	}
// });
