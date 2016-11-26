var express = require('express');
var router = express.Router();
var path = require('path');

var defaultParams = {title: 'RDF Fingerprinter'};

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('index', defaultParams );
});

function ensureAuthenticated(req, res, next) {
    if (req.isAuthenticated()) {
        return next();
    } else {
        //req.flash('error_msg','You are not logged in');
        res.redirect('/users/login');
    }
}

module.exports = router;

router.get("/reports/:filename", function (req, res, next) {
    var file = path.join(__dirname, '../reports/' + req.params.filename);
    res.download(file, function (err) {
        if (err) {
            var err = new Error('Oops! File not found.'); //TODO: check if this works
            err.status = 404;
            next(err);
            // res.next(err);
        }
    }); // Set disposition and send it.
});