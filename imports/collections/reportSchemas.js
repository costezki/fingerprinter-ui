import SimpleSchema from 'simpl-schema';
import { Tracker } from 'meteor/tracker';

export const StatsReportParameters = new SimpleSchema({
    alphaTitle: {
        type: String,
        max: 150,
        optional: false,
        label: "Data set name"
    },
    alphaDescription: {
        type: String,
        max: 300,
        optional: false,
        label: "Data set description"
    },
    alphaFile: {
        type:String,
        optional: false,
        label : "Data set CSV file (SPARQL query result set)"
    },
    alphaFilePath:{
        type:String,
        optional: false,
    }
}, { tracker: Tracker });

export const DiffReportParameters = new SimpleSchema({
    alphaTitle: {
        type: String,
        max: 150,
        optional: false,
        label: "Alpha data set name"
    },
    alphaDescription: {
        type: String,
        max: 300,
        optional: false,
        label: "Alpha data set description"
    },
    alphaFile: {
        type:String,
        optional: false,
        label : "Alpha data set CSV file (SPARQL query result set)"
    },
    alphaFilePath:{
        type:String,
        optional: false,
    },
    betaTitle: {
        type: String,
        max: 150,
        optional: false,
        label : "Beta data set title"
    },
    betaDescription: {
        type: String,
        max: 300,
        optional: false,
        label : "Beta data set description"
    },
    betaFile: {
        type:String,
        optional: false,
        label : "Beta data set CSV file (SPARQL query result set)"
    },
    betaFilePath:{
        type:String,
        optional: false,
    }
}, { tracker: Tracker });