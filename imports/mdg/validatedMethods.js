import { ValidatedMethod } from 'meteor/mdg:validated-method';
import { Csvs } from '/imports/collections/fileCollection';
import { StatsReportParameters, DiffReportParameters, FingerprinterProgress } from '/imports/collections/reportSchemas';
import SimpleSchema from 'simpl-schema';

let fs = Npm.require('fs');
let Future = Npm.require('fibers/future');
let Fiber = Npm.require('fibers');
let uuid = require('node-uuid');
let shell = require('shelljs');
let path = require('path');

/**
* [startFingerprinterProgress description]
* @type {ValidatedMethod}
*/
export const startFingerprinterProgress = new ValidatedMethod({
    name: 'startFingerprinterProgress',
    validate: new SimpleSchema({
        sessionId: { type: String },
        formName: { type: String }
    }).validator(),
    run({ sessionId, formName }) {
        let progressObj = {
            _id: sessionId,
            alphaFile: '',
            betaFile: '',
            configJson: '',
            pythonCall: '',
            createLink: ''
        };

        return FingerprinterProgress.insert(progressObj, (err) => {
            if (err) throw new Error(err);
        });
    }
});

export const updateFingerPrinterProgress = new ValidatedMethod({
    name: 'updateFingerPrinterProgress',
    validate(args) {},
    run({ progressId, step }) {
        FingerprinterProgress.update({_id: progressId}, {$set: step}, (err) => {
            if (err) throw new Error(err);
        });
    }
});

/**
*
*/
export const generateDiffReport = new ValidatedMethod({
    name: 'generateDiffReport',
    validate: DiffReportParameters.validator(),
    run({
        alphaTitle, alphaDescription, alphaFile, alphaFilePath,
        betaTitle, betaDescription, betaFile, betaFilePath, progressId
    }) {
        ({configPath, reportFileName} = generateConfigJSON({
            alphaTitle, alphaDescription, alphaFile, alphaFilePath,
            betaTitle, betaDescription, betaFile, betaFilePath
        }, progressId));

        callFingerprinter(configPath, 'diff', progressId, reportFileName);
    }
});

/**
*
*/
export const generateStatsReport = new ValidatedMethod({
    name: 'generateStatsReport',
    validate: StatsReportParameters.validator(),
    run({
        alphaTitle, alphaDescription, alphaFile, alphaFilePath, progressId
    }) {
        ({configPath, reportFileName} = generateConfigJSON({
            alphaTitle, alphaDescription, alphaFile, alphaFilePath
        }, progressId));

        callFingerprinter(configPath, 'stats', progressId, reportFileName);
    }
});

/**
*
* @param alphaTitle
* @param alphaDescription
* @param alphaFilePath
* @param betaTitle
* @param betaDescription
* @param betaFilePath
* @returns {*}
*/
function generateConfigJSON({
    alphaTitle, alphaDescription, alphaFilePath,
    betaTitle, betaDescription, betaFilePath
}, progressId) {
    updateProgress(progressId, { configJson: 'Starting to collect information about file(s) '});

    let uploads = Meteor.settings.public.path.uploads;
    let configFileName = uploads + '/config_' + uuid.v4() + ".json";
    let reportFileName = uploads + '/report_' + uuid.v4();

    //loading default content
    let content = JSON.parse(Assets.getText('resources/defaultValues.json'));

    //setting fields
    content.output = reportFileName;
    content.alpha = {file: alphaFilePath};
    content.alpha.title = alphaTitle;
    content.alpha.description = alphaDescription;
    content.ns_file = path.join(Assets.absoluteFilePath('resources/prefix.csv'));

    content.beta = {file: betaFilePath};
    content.beta.title = betaTitle;
    content.beta.description = betaDescription;

    //writing the file to disk
    let fileRef = CsvsCollectionSyncWrite(JSON.stringify(content, null, 4), {
        fileName: configFileName,
        type: 'application/json'
    }, progressId);
    return {configPath: fileRef.path, reportFileName: reportFileName};
}

/**
*
* @param content
* @param properties
* @returns {*}
*/
function CsvsCollectionSyncWrite(content, properties, progressId) {
    let thisFuture = new Future();
    Csvs.write(content, properties, (error, fileRef) => {
        if (error) throw error;
        thisFuture.return(fileRef);
        updateProgress(progressId, { configJson: 'done'});
    });
    return thisFuture.wait();
}

/**
*
* @param configJsonPath
* @returns {*}
*/

function callFingerprinter(configJsonPath, command, progressId, reportPath) {
    let thisFuture = new Future();
    return new Fiber(function() {
        updateProgress(progressId, { pythonCall: 'Starting to generate report...'});

        shell.exec('fingerprint ' + command + " " + configJsonPath, function (code, stdout, stderr) {
            if (code !== 0) {
                throw new Error("Could not successfully call RDF Fingerprinter");
            }
            thisFuture.return({
                code: code,
                out: stdout,
                err: stderr
            });
        });

        thisFuture.wait();

        updateProgress(progressId, { pythonCall: 'done'});

        updateProgress(progressId, { createLink: 'Creating link for downloading the report...'});

        addReportToCsvsCollection(reportPath, progressId);

        updateProgress(progressId, { createLink: 'done'});

    }).run();
}

/**
*
* @param reportPath
*/
function addReportToCsvsCollection(reportPath, progressId) {
    let fileData = fs.readFileSync(reportPath + ".pdf");
    let fileRef = CsvsCollectionSyncWrite(fileData, {
        meta: {
            sessionId: progressId
        },
        fileName: reportPath + ".pdf",
        type: 'application/pdf',
    });
    return fileRef;
}

function updateProgress(progressId, step) {
    Meteor.call('updateFingerPrinterProgress', { progressId, step }, (err) => {
        if (err) console.error(err);
    });
}
