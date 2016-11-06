/**
 * Created by lps on 06.11.16.
 */
var path = require('path');
var formidable = require('formidable');
var fs = require('fs');
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/stats', function (req, res) {
    res.render('upload-form', {
        title: 'RDF Fingerprinter',
        config: {
            title: "Data-set Fingerprint Report - Application Profile and descriptive statistics",
            author: "Generated with RDF Fingerprinter (by Eugeniu Costetchi)",
            description: "This is a default dataset description"
        }
    });
});

router.post('/stats-upload', function (req, res) {
// create an incoming form object
    console.log("post function");

    var form = new formidable.IncomingForm();
    // specify that we want to allow the user to upload multiple files in a single request
    // form.multiples = true;
    // store all uploads in the /uploads directory
    form.uploadDir = path.join(__dirname, '/uploads');

    console.log("enetring status upload");
    // every time a file has been uploaded successfully,
    // rename it to it's orignal name
    form.on('file', function (field, file) {
        console.log("receiving a file");
        fs.rename(file.path, path.join(form.uploadDir, file.name));
    });
    form.on('field', function (name, value) {
        console.log("received field - " + name + ":" + value);
    });
    // log any errors that occur
    form.on('error', function (err) {
        console.log('An error has occured: \n' + err);
    });
    // once all the files have been uploaded, send a response to the client
    form.on('end', function () {
        res.end('success');
    });
    // parse the incoming request containing the form data
    form.parse(req, function(err, fields, files) {
        console.log("parsing request");
        console.log(err);
        console.log(fields);
        console.log(files);
    });

    // res.send("something");
});


// var pyOptions_stats = {
//     mode: 'text',
//     pythonOptions: ['-u'],
//     scriptPath: './',
//     args: ['stats','reports/stats','./uploads/fingerprint.rq_eurovoc44.csv', 'some dataset description', 'uploads/prefix.csv']
// };
//
//
// PythonShell.run('./pysrc/RDF-fingerprint-diff/fingerprint/triple_profiler.py', pyOptions_stats, function (err, results) {
//     if (err) throw err;
//     // results is an array consisting of messages collected during execution
//     console.log('results: %j', results);
// });


// py_scr = child_process.spawn('python', ['./pysrc/RDF-fingerprint-diff/fingerprint/triple_profiler.py',
//     'diff', './uploads/fingerprint.rq_eurovoc44.csv', './uploads/config.json']);
//
// py_scr.stdout.on('data', function (data) {
//     console.log('stdout: ' + data);
// });
//
// py_scr.stderr.on('data', function (data) {
//     console.log('stderr: ' + data);
// });
//
// py_scr.on('close', function (code) {
//     console.log('child process exited with code ' + code);
// });

module.exports = router;
