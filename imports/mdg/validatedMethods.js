import { ValidatedMethod } from 'meteor/mdg:validated-method';
import { callBashScript } from './methodsUtils';
import SimpleSchema from 'simpl-schema';
import { Csvs, GeneratedFile } from '../collections/fileCollection';

let fs = Npm.require('fs');
let uuid = require('node-uuid');
let path = require('path');

let expandHomeDir = require('expand-home-dir');

export const generateJSON = new ValidatedMethod({
	name: 'generateJSON',
	validate: new SimpleSchema({
		formName: { type: String },
		fileId: { type: String },
		formData: { type: String }
	}).validator(),
	run({ formName, fileId, formData }) {
		// Get CSV data from collection to generate JSON file
		let filesId = JSON.parse(fileId);
        let fileAlpha = Csvs.findOne({_id: {$eq: filesId[0]}});
		let data = JSON.parse(formData);
        let fileBeta = Csvs.findOne({_id: {$eq: filesId[1]}});

        // uploads and reports dir path
        let uploads = expandHomeDir(Meteor.settings.public.path.uploads);
        let reports = expandHomeDir(Meteor.settings.public.path.reports);

        // parse the incoming request containing the form data
        let jsonFn = uploads + '/config_' + uuid.v4() + ".json";
        // adding extra file parameters
        let defaults = JSON.parse(Assets.getText('resources/defaultValues.json'));

        // Create object with settings data for stats-form
        let outputJs = {};
        outputJs.title = defaults.title;
        outputJs.author= defaults.author;

        outputJs.alpha = {file: fileAlpha._fileRef.path};
        outputJs.output = reports + '/report_' + uuid.v4();
        outputJs.alpha.title = data[0].value;
        outputJs.alpha.description = data[1].value;
        outputJs.ns_file = path.join( Assets.absoluteFilePath('resources/prefix.csv') );

		// Create object with settings data for diff-form
        if(formName == 'diff') {
            outputJs.beta = {file: fileBeta._fileRef.path};
            outputJs.output = reports + '/report_' + uuid.v4();
            outputJs.beta.title = data[2].value;
            outputJs.beta.description = data[3].value;
            outputJs.ns_file = path.join(Assets.absoluteFilePath('resources/prefix.csv'));
        }

        // writing the received data form to JSON file
        fs.writeFileSync(jsonFn, JSON.stringify(outputJs, null, 4), "utf-8");

		// TODO: Add function to call Python script and generate PDF file
		// Write PDF file and save it in to collection
        callBashScript(reports, function() {
            // Find generated file with bash script
            let fileData = fs.readFileSync(reports + "/" + "out.txt");

            // Remove duplicate file data
            if (GeneratedFile.findOne({}, {_id: "out"})) {
                GeneratedFile.remove({_id: "out"});
            }

            // Write new generated file in to collection
            GeneratedFile.write(fileData, {
                fileName: "out.txt",
                fileExtension: "",
                type: 'text/plain',
                fileId: "out",
                meta: {},
            }, (error, fileRef) => {
                if (error) throw error;
            });
        });
	}
});
