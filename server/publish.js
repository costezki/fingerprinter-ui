import { Csvs, GeneratedFile } from '../imports/collections/fileCollection';

Meteor.publish('files.csvs.all', function () {
	return Csvs.find().cursor;
});

Meteor.publish('generatedfile', function () {
	return GeneratedFile.find().cursor;
});
