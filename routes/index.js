var express = require('express');
var router = express.Router();
var path = require('path');

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('index', {title: 'RDF Fingerprinter'});
});

module.exports = router;

router.get("/reports/:filename", function (req, res) {
    var file = path.join(__dirname, '../reports/' + req.params.filename);
    res.download(file, function (err) {
        if (err) {
            res.end("File not found.");
        }
    }); // Set disposition and send it.
});