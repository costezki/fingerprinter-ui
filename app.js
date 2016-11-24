var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var mkdirp = require('mkdirp');

var bodyParser = require('body-parser');
var expressValidator = require('express-validator');
var flash = require('connect-flash');
var session = require('express-session');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var mongo = require('mongodb');
var mongoose = require('mongoose');


mongoose.connect('mongodb://localhost/fingerprinter');
var db = mongoose.connection;

// var bodyParser = require('body-parser');

// var PythonShell = require('python-shell');
var child_process = require('child_process');

// var formidable = require('express-formidable');

//
var formidable = require('formidable');
var fs = require('fs');
//
var index = require('./routes/index');
var stats = require('./routes/stats-form');
var diff = require('./routes/diff-form');
var users = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
// app.set('view engine', 'jade');
app.set('view engine', 'pug');

app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: false}));
app.use(cookieParser());
// uncomment after placing your favicon in /public
//app.use(favicon(path.join(__dirname, 'public', 'favicon.ico')));

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, 'reports')));

// Express Session
app.use(session({
    secret: 'secret',
    saveUninitialized: true,
    resave: true
}));

// Passport init
app.use(passport.initialize());
app.use(passport.session());

// Express Validator
app.use(expressValidator({
    errorFormatter: function (param, msg, value) {
        var namespace = param.split('.')
            , root = namespace.shift()
            , formParam = root;

        while (namespace.length) {
            formParam += '[' + namespace.shift() + ']';
        }
        return {
            param: formParam,
            msg: msg,
            value: value
        };
    }
}));

// Connect Flash
app.use(flash());

// Global Vars
app.use(function (req, res, next) {
    res.locals.success_msg = req.flash('success_msg');
    res.locals.error_msg = req.flash('error_msg');
    res.locals.error = req.flash('error');
    res.locals.user = req.user || null;
    next();
});

app.use('/', index);
app.use('/', stats);
app.use('/', diff);
app.use('/users', users);

// solution of exposing static folders
// http://stackoverflow.com/questions/27464168/how-to-include-scripts-located-inside-the-node-modules-folder

app.use('/font-awesome', express.static(__dirname + '/node_modules/font-awesome/'));
app.use('/jade-bootstrap', express.static(__dirname + '/node_modules/jade-bootstrap/'));
app.use('/jquery', express.static(__dirname + '/node_modules/jquery/'));
app.use('/bootstrap-filestyle', express.static(__dirname + '/node_modules/bootstrap-filestyle/'));
app.use('/clipboard', express.static(__dirname + '/node_modules/clipboard/'));
// app.use('/fs', express.static(__dirname + '/node_modules/fs/'));

// catch 404 and forward to error handler
app.use(function (req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// Create folders uploads and reports
mkdirp(__dirname + '/uploads', function (err) {
    if (err) {
        console.error(err)
    } else {
        console.log('Folder uploads has been created!')
    }
});

mkdirp(__dirname + '/reports', function (err) {
    if (err) {
        console.error(err)
    } else {
        console.log('Folder reports has been created!')
    }
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
