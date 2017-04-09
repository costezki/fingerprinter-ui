import { Meteor } from 'meteor/meteor';
import { Csvs } from '../imports/ui/collections/fileCollection';

let fs = Npm.require('fs');
let mkdirp = require('mkdirp');
let uuid = require('node-uuid');
let path = require('path');
let PythonShell = require('python-shell');

let pathArray = ["uploads", "reports"];
pathArray.forEach(function(item, index, array) {
    mkdirp(Meteor.settings.public.path[item], function (err) {
        if (err) console.error(err);
    });
});


Meteor.methods({
    "create-json-and-call-python": function(formName, fileId, formData) {
        let fileAlpha = Csvs.findOne({_id: {$eq: fileId}});
        // let fileBeta = Csvs.findOne({_id: {$eq: fileId}});

        // uploads and reports dir path
        let uploads = Meteor.settings.path.uploads;
        let reports = Meteor.settings.path.reports;
        // parse the incoming request containing the form data
        let jsonFn = path.join(uploads, 'config_' + uuid.v4() + ".json");
        // adding extra file parameters
        let defaults = JSON.parse(Assets.getText('resources/defaultValues.json'));

        let outputJs = {};
        outputJs.title = defaults.config.title;
        outputJs.author= defaults.config.author;

        outputJs.alpha = {'file': fileAlpha._fileRef};
        outputJs.output = path.join(reports + '/report_' + uuid.v4());
        outputJs.alpha.title = formData[0].value;
        outputJs.alpha.description = formData[1].value;
        outputJs.ns_file = path.join( Assets.absoluteFilePath('resources/prefix.csv') );

        // if(formName == 'diff') {
        //     outputJs.beta = {'file': fileBeta._fileRef};
        //     outputJs.output = path.join(reports + '/report_' + uuid.v4());
        //     outputJs.beta.title = formData[2].value;
        //     outputJs.beta.description = formData[3].value;
        //     outputJs.ns_file = path.join('/home/lordgarod/Web-projects/fingerprinter-ui(meteor)/private/resources/prefix.csv');
        // }

        // TODO: write file with fs.writeFileSync
        // writing the received data form to file
        fs.writeFile(jsonFn, JSON.stringify(outputJs, null, 4), function (error) {
            if (error) {
                console.log(error);
                return error;
            } else {
                console.log("JSON saved to " + jsonFn);
                // calling the script only when the file is there
                callPythonScript(jsonFn, formName, function () {
                    // creating the response header when the Python script has finished execution
                    let report_pdf = path.basename(outputJs.output + ".pdf");

                    return reports + "/" + report_pdf;
                });
            }
        });
    }
});

/**
* Calls a child Python process that generates the Report
* @param jsonFile
* @param formName
* @param onCloseCallback
*/
function callPythonScript(jsonFile, formName, onCloseCallback) {
    console.log('running pythons script');
    let pyOptionsDefault = {
        mode: 'text', // json, binary
        pythonOptions: ['-u'],
        scriptPath: '/home/lordgarod/Web-projects/fingerprinter-ui(meteor)/public/RDF-fingerprint-diff/fingerprint/',
        args: [formName, jsonFile]
    };
    //creating a PythonShell object
    let shell = new PythonShell("triple_profiler.py",
    pyOptionsDefault);

    shell.on('message', function (message) {
        // handle message (a line of text from stdout)
        console.log("Message: " + message);
    });

    shell.on('error', function (err) {
        // Fires when the process terminates with a non-zero
        // exit code, or if data is written to the stderr stream.
        console.log("ErrorE: " + err);
    });

    shell.on('close', function (err) {
        // Fires when the process has been terminated, with an error or not.
        if (err) {
            console.log("ErrorC: " + err);
        }
        console.log("Python process successfully terminated.");
        if (onCloseCallback) {
            // call the callback function
            return onCloseCallback();
        }
    });
}
