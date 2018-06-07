import {ValidatedMethod} from 'meteor/mdg:validated-method';
import {Csvs} from '../collections/fileCollection';
import {StatsReportParameters, DiffReportParameters} from "../collections/reportSchemas";

let fs = Npm.require('fs');
let Future = Npm.require('fibers/future');
let uuid = require('uuid');
let shell = require('shelljs');
let path = require('path');

/**
 *
 */
export const generateDiffReport = new ValidatedMethod({
    name: 'generateDiffReport',
    validate: DiffReportParameters.validator(),
    run({
            alphaTitle, alphaDescription, alphaFile, alphaFilePath,
            betaTitle, betaDescription, betaFile, betaFilePath
        }) {
        console.log({
            alphaTitle, alphaDescription, alphaFile, alphaFilePath,
            betaTitle, betaDescription, betaFile, betaFilePath
        });
        ({configPath, reportFileName} = generateConfigJSON({
            alphaTitle, alphaDescription, alphaFile, alphaFilePath,
            betaTitle, betaDescription, betaFile, betaFilePath
        }));
        let fingerprintResults = callFingerprinter(configPath, "diff");
        let cursor = addReportToCsvsCollection(reportFileName);
        return {fileCursor: cursor, bashResults: fingerprintResults};
    }
});

/**
 *
 */
export const generateStatsReport = new ValidatedMethod({
    name: 'generateStatsReport',
    validate: StatsReportParameters.validator(),
    run({alphaTitle, alphaDescription, alphaFile, alphaFilePath}) {
        ({configPath, reportFileName} = generateConfigJSON({alphaTitle, alphaDescription, alphaFile, alphaFilePath}));
        let fingerprintResults = callFingerprinter(configPath, "stats");
        let cursor = addReportToCsvsCollection(reportFileName);
        return {fileCursor: cursor, bashResults: fingerprintResults};
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
                            }) {
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
    });
    return {configPath: fileRef.path, reportFileName: reportFileName};
}

/**
 *
 * @param content
 * @param properties
 * @returns {*}
 */
function CsvsCollectionSyncWrite(content, properties) {
    let thisFuture = new Future();
    Csvs.write(content, properties, (error, fileRef) => {
        if (error) throw error;
        thisFuture.return(fileRef);
    });
    return thisFuture.wait();
}

/**
 *
 * @param configJsonPath
 * @returns {*}
 */

function callFingerprinter(configJsonPath, command) {
    let thisFuture = new Future();
    shell.exec('fingerprint ' + command + " " + configJsonPath, function (code, stdout, stderr) {
        if (code != 0) {
            throw new Error("Could not successfully call RDF Fingerprinter");
        }
        thisFuture.return({
            code: code,
            out: stdout,
            err: stderr
        });
    });
    return thisFuture.wait();
}

/**
 *
 * @param reportPath
 */
function addReportToCsvsCollection(reportPath) {
    let fileData = fs.readFileSync(reportPath + ".pdf");
    let fileRef = CsvsCollectionSyncWrite(fileData, {
        fileName: reportPath + ".pdf",
        type: 'application/pdf',
    });
    return fileRef;
}