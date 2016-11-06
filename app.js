var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');

// var bodyParser = require('body-parser');

var PythonShell = require('python-shell');
var child_process = require('child_process');

// var formidable = require('express-formidable');

//
var path = require('path');
var formidable = require('formidable');
var fs = require('fs');
//
var index = require('./routes/index');
var upload = require('./routes/upload-form');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');
app.set('view engine', 'pug')

app.use(logger('dev'));
// app.use(bodyParser.json());
// app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());
// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));

app.use(express.static(path.join(__dirname, 'public')));

app.use('/', index);
app.use('/', upload);

// app.post('/stats-upload', function (req, res) {
//     // create an incoming form object
//     var form = new formidable.IncomingForm();
//     // specify that we want to allow the user to upload multiple files in a single request
//     form.multiples = true;
//     // store all uploads in the /uploads directory
//     form.uploadDir = path.join(__dirname, '/uploads');
//     // every time a file has been uploaded successfully,
//     // rename it to it's orignal name
//     form.on('file', function (field, file) {
//         console.log(file);
//         fs.rename(file.path, path.join(form.uploadDir, file.name));
//     });
//     form.on('field', function (name, value) {
//         console.log(name + ":" + value);
//     });
//     // log any errors that occur
//     form.on('error', function (err) {
//         console.log('An error has occured: \n' + err);
//     });
//     // once all the files have been uploaded, send a response to the client
//     form.on('end', function () {
//         res.end('success');
//     });
//     // parse the incoming request containing the form data
//     form.parse(req);
// });

// solution of exposing static folders
// http://stackoverflow.com/questions/27464168/how-to-include-scripts-located-inside-the-node-modules-folder
//
app.use('/font-awesome', express.static(__dirname + '/node_modules/font-awesome/'));
app.use('/jade-bootstrap', express.static(__dirname + '/node_modules/jade-bootstrap/'));
app.use('/jquery', express.static(__dirname + '/node_modules/jquery/'));
app.use('/bootstrap-filestyle', express.static(__dirname + '/node_modules/bootstrap-filestyle/'));
// app.use('/jquery', express.static(__dirname + '/node_modules/jquery/'));

// catch 404 and forward to error handler
app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// error handler
app.use(function (err, req, res, next) {
    // set locals, only providing error in development
    res.locals.message = err.message;
    res.locals.error = req.app.get('env') === 'development' ? err : {};

    // render the error page
    res.status(err.status || 500);
    res.render('error');
});

module.exports = app;
