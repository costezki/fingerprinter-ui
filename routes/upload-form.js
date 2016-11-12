/**
 * Created by lps on 06.11.16.
 */
var uuid = require('node-uuid');
var path = require('path');
var formidable = require('formidable');
var fs = require('fs');
var express = require('express');
var router = express.Router();
var PythonShell = require('python-shell');

/* GET home page. */
router.get('/stats', function (req, res) {
    res.render('upload-form', {
        title: 'RDF Fingerprinter',
        config: {
            title: "Data-set Fingerprint Report - Application Profile and Descriptive Statistics",
            author: "Generated with RDF Fingerprinter (by Eugeniu Costetchi)",
            description: "This is a default dataset description",
            alpha: {
                title: "Dataset name",
                description: "This is a very special dataset"
            }
        }
    });
});

/**
 * handling POST AJAX calls.
 */
router.post('/stats-upload', function (req, res) {
    // create an incoming form object
    var form = new formidable.IncomingForm();
    // specify that we want to allow the user to upload multiple files in a single request
    // form.multiples = true;
    // store all uploads in the /uploads directory
    form.uploadDir = path.join(__dirname, '../uploads');

    // every time a file has been uploaded successfully,
    // rename it to it's orignal name
    form.on('file', function (field, file) {
        // console.log("receiving a file");
        // fs.rename(file.path, path.join(form.uploadDir, file.name));
    });
    form.on('field', function (name, value) {
        // console.log("received field - " + name + ":" + value);
    });
    // log any errors that occur
    form.on('error', function (err) {
        console.log('An error has occurred: \n' + err);
    });
    // once all the files have been uploaded, send a response to the client
    form.on('end', function () {
        // res.end('success');
        // res.write('received');
        console.log("The Form has been successfully received.");
    });
    // parse the incoming request containing the form data
    form.parse(req, function (err, fields, files) {
        // console.log("parsing request");
        //catch errors
        if (err) {
            throw new Error(err);
        }

        var jsonFn = path.join(form.uploadDir, 'config_' + uuid.v4() + ".json");
        // adding extra file parameters
        var outputJs = fields;
        outputJs['alpha'] = {'file': files['alpha']};
        outputJs['output'] = path.join(__dirname, '../reports/report_' + uuid.v4());
        outputJs['alpha']['title'] = fields['alpha-title'];
        outputJs['alpha']['description'] = fields['alpha-description'];
        outputJs['ns_file'] = path.join(__dirname, '../resources/prefix.csv');
        // writing the received data form to file
        fs.writeFile(jsonFn, JSON.stringify(outputJs, null, 4), function (err) {
            if (err) {
                throw new err;
            } else {
                console.log("JSON saved to " + jsonFn);
                // calling the script only when the file is there
                callPythonScriptDiff(jsonFn, function () {
                    // creating the response header when the Python script has finished execution
                    var report_pdf = path.basename(outputJs['output'] + ".pdf");
                    // closing the  ajax connection
                    res.end('/reports/' + report_pdf);
                });
            }
        });
    });
});


router.get("/reports/:filename", function (req, res) {
    var file = path.join(__dirname, '../reports/' + req.params.filename);
    res.download(file, function (err) {
        if (err) {
            res.end("File not found.");
        }
    }); // Set disposition and send it.
});

/**
 * Calls a child Python process that generates the Report
 * @param jsonFile
 */
function callPythonScriptDiff(jsonFile, onCloseCallback) {
    console.log('running pythons script');
    var pyOptionsDefault = {
        mode: 'text', // json, binary
        pythonOptions: ['-u'],
        scriptPath: path.join(__dirname, '../pysrc/RDF-fingerprint-diff/fingerprint/'),
        args: ['stats', jsonFile]
    };
    //creating a PythonShell object
    var shell = new PythonShell("triple_profiler.py",
        pyOptionsDefault);

    // function (err, result) {
    //     // Runs the Python script and invokes callback with the results.
    //     // The callback contains the execution error (if any) as well as
    //     // an array of messages emitted from the Python script.
    //     if (err) {
    //         console.log('ErrorR: ' + err);
    //     }
    //     if (result) {
    //         console.log('ResultR: ' + result);
    //     }
    // }

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
            onCloseCallback();
        }
    });
}

module.exports = router;
