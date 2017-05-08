import { Csvs, GeneratedFile } from '/imports/collections/fileCollection';
import { FingerprinterProgress } from '/imports/collections/reportSchemas';

Meteor.publish('files.csvs.all', function () {
	return Csvs.find().cursor;
});

Meteor.publish('generatedfile', function () {
	return GeneratedFile.find().cursor;
});

Meteor.publish('fingerprinterProgress', function () {
	return FingerprinterProgress.find();
});
