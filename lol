[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex cbd43bc..5c7abcb 100755[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -1,3 +1,50 @@[m
[32m+[m
[32m+[m[32m# Compiled source #[m
[32m+[m[32m###################[m
[32m+[m[32m*.pyc[m
[32m+[m
[32m+[m[32m# Packages #[m
[32m+[m[32m############[m
[32m+[m[32m# it's better to unpack these files and commit the raw source[m
[32m+[m[32m# git has its own built in compression methods[m
[32m+[m[32m*.7z[m
[32m+[m[32m*.dmg[m
[32m+[m[32m*.gz[m
[32m+[m[32m*.iso[m
[32m+[m[32m*.jar[m
[32m+[m[32m*.rar[m
[32m+[m[32m*.tar[m
[32m+[m[32m*.zip[m
[32m+[m
[32m+[m[32m# Logs and databases #[m
[32m+[m[32m######################[m
[32m+[m[32m*.log[m
[32m+[m[32m*.sql[m
[32m+[m[32m*.sqlite[m
[32m+[m
[32m+[m[32m# OS generated files #[m
[32m+[m[32m######################[m
[32m+[m[32m.DS_Store[m
[32m+[m[32m.DS_Store?[m
[32m+[m[32m._*[m
[32m+[m[32m.Spotlight-V100[m
[32m+[m[32m.Trashes[m
[32m+[m[32mehthumbs.db[m
[32m+[m[32mThumbs.db[m
[32m+[m
[32m+[m[32m# Setuptools distribution folder.[m
[32m+[m[32m/dist/[m
[32m+[m
[32m+[m[32m# Python egg metadata, regenerated from source files by setuptools.[m
[32m+[m[32m/*.egg-info[m
[32m+[m[32m/*.egg[m
[32m+[m
[32m+[m[32m## Appended[m
[32m+[m[32mthird-party/[m
[32m+[m[32mtemp/[m
[32m+[m[32mlog/[m
[32m+[m[32msetup.sh~[m
[32m+[m[32m.idea/[m
 node_modules/[m
 .idea/[m
 .jshintrc[m
[1mdiff --git a/.meteor/packages b/.meteor/packages[m
[1mindex 764a151..72c29d6 100644[m
[1m--- a/.meteor/packages[m
[1m+++ b/.meteor/packages[m
[36m@@ -6,15 +6,15 @@[m
 [m
 meteor-base@1.0.4             # Packages every Meteor app needs to have[m
 mobile-experience@1.0.4       # Packages for a great mobile UX[m
[31m-mongo@1.1.17                   # The database Meteor supports right now[m
[32m+[m[32mmongo@1.1.16                   # The database Meteor supports right now[m
 blaze-html-templates@1.0.4 # Compile .html files into Meteor Blaze views[m
 reactive-var@1.0.11            # Reactive variable for tracker[m
[31m-tracker@1.1.3                 # Meteor's client-side reactive programming library[m
[32m+[m[32mtracker@1.1.2                 # Meteor's client-side reactive programming library[m
 [m
 standard-minifier-css@1.3.4   # CSS minifier run for production mode[m
 standard-minifier-js@2.0.0    # JS minifier run for production mode[m
 es5-shim@4.6.15                # ECMAScript 5 compatibility for older browsers.[m
[31m-ecmascript@0.7.3              # Enable ECMAScript2015+ syntax in app code[m
[32m+[m[32mecmascript@0.7.2              # Enable ECMAScript2015+ syntax in app code[m
 shell-server@0.2.3            # Server-side component of the `meteor shell` command[m
 [m
 #autopublish@1.0.7             # Publish all data to the clients (for prototyping)[m
[36m@@ -31,6 +31,7 @@[m [mzenorocha:clipboard[m
 twbs:bootstrap[m
 tanis:bootstrap-social[m
 fortawesome:fontawesome[m
[32m+[m[32mjquery[m
 [m
 simple:reactive-method[m
 aldeed:autoform@6.0.0[m
[36m@@ -41,10 +42,15 @@[m [mmdg:validated-method[m
 [m
 #time for testing[m
 #xolvio:cucumber         # cucumber testing with .feature files[m
[31m-practicalmeteor:mocha[m
[32m+[m
[32m+[m
 #canotto90:mocha-reporters   # attempt to change the strong white background of HTML mocha reporter, intended to work with mike:mocha[m
[31m-practicalmeteor:chai[m
 #practicalmeteor:sinon[m
[31m-http@1.2.12[m
 [m
[31m-meteortoys:allthings # allows debugging Meteor application[m
[32m+[m[32m#practicalmeteor:chai[m
[32m+[m[32m#practicalmeteor:mocha[m
[32m+[m
[32m+[m[32m#http[m
[32m+[m[32m#cfs:http-methods[m
[32m+[m
[32m+[m[32m#meteortoys:allthings # allows debugging Meteor application[m
[1mdiff --git a/.meteor/release b/.meteor/release[m
[1mindex fb6f3bc..605b4e1 100644[m
[1m--- a/.meteor/release[m
[1m+++ b/.meteor/release[m
[36m@@ -1 +1 @@[m
[31m-METEOR@1.4.4.2[m
[32m+[m[32mMETEOR@1.4.4.1[m
[1mdiff --git a/.meteor/versions b/.meteor/versions[m
[1mindex 295a9ba..da11283 100644[m
[1m--- a/.meteor/versions[m
[1m+++ b/.meteor/versions[m
[36m@@ -1,6 +1,5 @@[m
[31m-accounts-base@1.2.17[m
[31m-aldeed:autoform@6.1.0[m
[31m-aldeed:collection2-core@2.0.1[m
[32m+[m[32maldeed:autoform@6.0.0[m
[32m+[m[32maldeed:collection2-core@2.0.0[m
 allow-deny@1.0.5[m
 autoupdate@1.3.12[m
 babel-compiler@6.18.2[m
[36m@@ -19,14 +18,12 @@[m [mcoffeescript@1.12.3_1[m
 ddp@1.2.5[m
 ddp-client@1.3.4[m
 ddp-common@1.2.8[m
[31m-ddp-rate-limiter@1.0.7[m
 ddp-server@1.3.14[m
 deps@1.0.12[m
 diff-sequence@1.0.7[m
 ecmascript@0.7.3[m
 ecmascript-runtime@0.3.15[m
 ejson@1.0.13[m
[31m-email@1.2.1[m
 es5-shim@4.6.15[m
 fastclick@1.0.13[m
 fortawesome:fontawesome@4.7.0[m
[36m@@ -41,58 +38,33 @@[m [mkadira:blaze-layout@2.3.0[m
 kadira:flow-router@2.12.1[m
 launch-screen@1.1.1[m
 livedata@1.0.18[m
[31m-localstorage@1.0.12[m
 logging@1.1.17[m
 mdg:validated-method@1.1.0[m
 meteor@1.6.1[m
 meteor-base@1.0.4[m
[31m-meteortoys:allthings@3.0.0[m
[31m-meteortoys:authenticate@3.0.0[m
[31m-meteortoys:autopub@3.0.0[m
[31m-meteortoys:blueprint@3.0.0[m
[31m-meteortoys:email@3.0.0[m
[31m-meteortoys:hotreload@3.0.0[m
[31m-meteortoys:listen@3.0.0[m
[31m-meteortoys:method@3.0.4[m
[31m-meteortoys:pub@3.0.4[m
[31m-meteortoys:result@3.0.0[m
[31m-meteortoys:shell@3.0.0[m
[31m-meteortoys:status@3.0.0[m
[31m-meteortoys:sub@3.0.0[m
[31m-meteortoys:throttle@3.0.0[m
[31m-meteortoys:toykit@3.0.4[m
 minifier-css@1.2.16[m
 minifier-js@2.0.0[m
[31m-minimongo@1.0.23[m
[32m+[m[32mminimongo@1.0.21[m
 mobile-experience@1.0.4[m
 mobile-status-bar@1.0.14[m
 modules@0.8.2[m
 modules-runtime@0.7.10[m
 momentjs:moment@2.18.1[m
[31m-mongo@1.1.17[m
[32m+[m[32mmongo@1.1.16[m
 mongo-id@1.0.6[m
[31m-msavin:jetsetter@2.0.0[m
[31m-msavin:mongol@2.0.1[m
 npm-mongo@2.2.24[m
 observe-sequence@1.0.16[m
 ordered-dict@1.0.9[m
 ostrio:cookies@2.2.0[m
 ostrio:files@1.7.13[m
[31m-practicalmeteor:chai@2.1.0_1[m
[31m-practicalmeteor:loglevel@1.2.0_2[m
[31m-practicalmeteor:mocha@2.4.5_6[m
[31m-practicalmeteor:mocha-core@1.0.1[m
[31m-practicalmeteor:sinon@1.14.1_2[m
 promise@0.8.8[m
 raix:eventemitter@0.1.3[m
 random@1.0.10[m
[31m-rate-limit@1.0.8[m
 reactive-dict@1.1.8[m
 reactive-var@1.0.11[m
 reload@1.1.11[m
 retry@1.0.9[m
 routepolicy@1.0.12[m
[31m-service-configuration@1.0.11[m
 session@1.1.7[m
 shell-server@0.2.3[m
 simple:reactive-method@1.0.2[m
[36m@@ -106,8 +78,7 @@[m [mtemplating-compiler@1.3.2[m
 templating-runtime@1.3.2[m
 templating-tools@1.1.2[m
 tmeasday:check-npm-versions@0.3.1[m
[31m-tmeasday:test-reporter-helpers@0.2.1[m
[31m-tracker@1.1.3[m
[32m+[m[32mtracker@1.1.2[m
 twbs:bootstrap@3.3.6[m
 ui@1.0.13[m
 underscore@1.0.10[m
[1mdiff --git a/.mup-dev/mup.js b/.mup-dev/mup.js[m
[1mindex 4e5996e..7672e9f 100755[m
[1m--- a/.mup-dev/mup.js[m
[1m+++ b/.mup-dev/mup.js[m
[36m@@ -15,8 +15,8 @@[m [mmodule.exports = {[m
         name: 'fingerprinter',[m
         path: '../',[m
         volumes: { // lets you add docker volumes (optional)[m
[31m-            "/reports": "/reports", // passed as '-v /host/path:/container/path' to the docker run command[m
[31m-            "/uploads": "/uploads", // passed as '-v /host/path:/container/path' to the docker run command[m
[32m+[m[32m            "/home/lps/temp/reports": "/reports", // passed as '-v /host/path:/container/path' to the docker run command[m
[32m+[m[32m            "/home/lps/temp/uploads": "/uploads", // passed as '-v /host/path:/container/path' to the docker run command[m
         },[m
 [m
         servers: {[m
[1mdiff --git a/.mup-dev/settings.json b/.mup-dev/settings.json[m
[1mindex f98cfef..7e61767 100755[m
[1m--- a/.mup-dev/settings.json[m
[1m+++ b/.mup-dev/settings.json[m
[36m@@ -1,6 +1,6 @@[m
 {[m
     "public": {[m
[31m-        "version": "0.3",[m
[32m+[m[32m        "version": "0.4",[m
         "path": {[m
             "uploads": "/uploads",[m
             "reports": "/reports"[m
[1mdiff --git a/.mup/mup.js b/.mup/mup.js[m
[1mindex b88fc63..d778c33 100755[m
[1m--- a/.mup/mup.js[m
[1m+++ b/.mup/mup.js[m
[36m@@ -1,7 +1,7 @@[m
 module.exports = {[m
     servers: {[m
         one: {[m
[31m-            host: 'ec2-35-158-0-136.eu-central-1.compute.amazonaws.com',[m
[32m+[m[32m            host: 'ec2-35-158-84-6.eu-central-1.compute.amazonaws.com',[m
             username: 'ubuntu',[m
             pem: '/home/lps/work/commonInstance/CommonInstance.pem',[m
             // password:[m
[36m@@ -13,8 +13,8 @@[m [mmodule.exports = {[m
         name: 'fingerprinter',[m
         path: '../',[m
         volumes: { // lets you add docker volumes (optional)[m
[31m-            "/reports": "/reports", // passed as '-v /host/path:/container/path' to the docker run command[m
[31m-            "/uploads": "/uploads", // passed as '-v /host/path:/container/path' to the docker run command[m
[32m+[m[32m            "/opt/resources/fingerprinter-ui/reports": "/reports", // passed as '-v /host/path:/container/path' to the docker run command[m
[32m+[m[32m            "/opt/resources/fingerprinter-ui/uploads": "/uploads", // passed as '-v /host/path:/container/path' to the docker run command[m
         },[m
 [m
         servers: {[m
[1mdiff --git a/.mup/nginx-fingerprinter b/.mup/nginx-fingerprinter[m
[1mindex 7cd30b7..84147f2 100644[m
[1m--- a/.mup/nginx-fingerprinter[m
[1m+++ b/.mup/nginx-fingerprinter[m
[36m@@ -1,3 +1,8 @@[m
[32m+[m[32mmap $http_upgrade $connection_upgrade {[m
[32m+[m[32m        default upgrade;[m
[32m+[m[32m        '' close;[m
[32m+[m[32m    }[m
[32m+[m
 server {[m
     listen   80;[m
 [m
[1mdiff --git a/client/main.css b/client/main.css[m
[1mindex 8a9ae28..ef01768 100755[m
[1m--- a/client/main.css[m
[1m+++ b/client/main.css[m
[36m@@ -13,10 +13,6 @@[m [mfooter {[m
     text-align: center;[m
 }[m
 [m
[31m-.fa-check {[m
[31m-    color: #4CAF50;[m
[31m-}[m
[31m-[m
 .pre-scrollable {[m
     max-height: 375px;[m
 }[m
[36m@@ -139,31 +135,11 @@[m [mh4 {[m
     margin: 30px 0;[m
 }[m
 [m
[31m-/* Main marketing message and sign up button */[m
[31m-.jumbotron {[m
[31m-    text-align: center;[m
[31m-    border-bottom: 1px solid #e5e5e5;[m
[31m-}[m
[31m-[m
[31m-.jumbotron .btn {[m
[31m-    padding: 14px 24px;[m
[31m-    font-size: 21px;[m
[31m-}[m
[31m-[m
[31m-/* Supporting marketing content */[m
[31m-.marketing {[m
[31m-    margin: 40px 0;[m
[31m-}[m
[31m-[m
[31m-.marketing p + h4 {[m
[31m-    margin-top: 28px;[m
[31m-}[m
[31m-[m
 .buttonText {[m
     margin-left: 5px;[m
 }[m
 [m
[31m-#stats-form input, #diff-form input {[m
[32m+[m[32m#statsFormm input, #diffFormm input {[m
     padding-left: 10px !important;[m
 }[m
 [m
[36m@@ -172,6 +148,9 @@[m [mh4 {[m
     clip: rect(0px 0px 0px 0px);[m
 }[m
 [m
[32m+[m
[32m+[m
[32m+[m
 /* Responsive: Portrait tablets and up */[m
 @media screen and (min-width: 768px) {[m
     /* Remove the padding we set earlier */[m
[36m@@ -206,3 +185,33 @@[m [mh4 {[m
         padding: 0 !important;[m
     }[m
 }[m
[32m+[m
[32m+[m[32m.file-upload-clear {[m
[32m+[m[32m    cursor: pointer;[m
[32m+[m[32m}[m
[32m+[m[32m.form-group.file-upload .form-group label,[m
[32m+[m[32m.form-group.file-upload .form-group input {[m
[32m+[m[32m    display: none;[m
[32m+[m[32m}[m
[32m+[m[32m.form-group.file-upload .btn {[m
[32m+[m[32m    max-width: 100%;[m
[32m+[m[32m    text-overflow: ellipsis;[m
[32m+[m[32m    overflow: hidden;[m
[32m+[m[32m}[m
[32m+[m[32m.af-select-file {[m
[32m+[m[32m    position: relative;[m
[32m+[m[32m    overflow: hidden;[m
[32m+[m[32m    display: inline-block;[m
[32m+[m[32m}[m
[32m+[m[32m.af-select-file input {[m
[32m+[m[32m    position: absolute;[m
[32m+[m[32m    top: 0;[m
[32m+[m[32m    right: 0;[m
[32m+[m[32m    margin: 0;[m
[32m+[m[32m    opacity: 0;[m
[32m+[m[32m    -ms-filter: 'alpha(opacity=0)';[m
[32m+[m[32m    font-size: 200px;[m
[32m+[m[32m    direction: ltr;[m
[32m+[m[32m    cursor: pointer;[m
[32m+[m[32m}[m
[41m+[m
[1mdiff --git a/imports/collections/fileCollection.js b/imports/collections/fileCollection.js[m
[1mindex 3cda6d3..c3f4860 100755[m
[1m--- a/imports/collections/fileCollection.js[m
[1m+++ b/imports/collections/fileCollection.js[m
[36m@@ -1,14 +1,14 @@[m
 import { FilesCollection } from 'meteor/ostrio:files';[m
 [m
 let uploads = Meteor.settings.public.path.uploads;[m
[31m-[m
[32m+[m[32mvar _0774 = parseInt('0774', 8);[m
 export const Csvs = new FilesCollection({[m
     debug:false,[m
     storagePath: uploads,[m
     downloadRoute: "/downloads",[m
     collectionName: 'csvs',[m
[31m-    permissions: 777,[m
[31m-    allowClientCode: false, // Disallow remove files from Client[m
[32m+[m[32m    permissions: _0774,[m
[32m+[m[32m    parentDirPermissions: _0774,[m
     onBeforeUpload: function (file) {[m
         // Allow upload files under 100MB, and only in csv formats[m
         if (file.size <= 104857600 ) // && /csv/i.test(file.extension)[m
[1mdiff --git a/imports/collections/reportSchemas.js b/imports/collections/reportSchemas.js[m
[1mindex 8d2c2b9..5b17768 100644[m
[1m--- a/imports/collections/reportSchemas.js[m
[1m+++ b/imports/collections/reportSchemas.js[m
[36m@@ -1,5 +1,3 @@[m
[31m-import { Meteor } from 'meteor/meteor';[m
[31m-import { Mongo } from 'meteor/mongo';[m
 import SimpleSchema from 'simpl-schema';[m
 import { Tracker } from 'meteor/tracker';[m
 [m
[36m@@ -21,13 +19,9 @@[m [mexport const StatsReportParameters = new SimpleSchema({[m
         optional: false,[m
         label : "Data set CSV file (SPARQL query result set)"[m
     },[m
[31m-    alphaFilePath: {[m
[31m-        type: String,[m
[31m-        optional: true[m
[31m-    },[m
[31m-    progressId: {[m
[31m-        type: String,[m
[31m-        optional: true[m
[32m+[m[32m    alphaFilePath:{[m
[32m+[m[32m        type:String,[m
[32m+[m[32m        optional: false,[m
     }[m
 }, { tracker: Tracker });[m
 [m
[36m@@ -36,48 +30,42 @@[m [mexport const DiffReportParameters = new SimpleSchema({[m
         type: String,[m
         max: 150,[m
         optional: false,[m
[31m-        label: 'Alpha data set name'[m
[32m+[m[32m        label: "Alpha data set name"[m
     },[m
     alphaDescription: {[m
         type: String,[m
         max: 300,[m
         optional: false,[m
[31m-        label: 'Alpha data set description'[m
[32m+[m[32m        label: "Alpha data set description"[m
     },[m
     alphaFile: {[m
[31m-        type: String,[m
[32m+[m[32m        type:String,[m
         optional: false,[m
[31m-        label: 'Alpha data set CSV file (SPARQL query result set)'[m
[32m+[m[32m        label : "Alpha data set CSV file (SPARQL query result set)"[m
     },[m
[31m-    alphaFilePath: {[m
[31m-        type: String,[m
[31m-        optional: true[m
[32m+[m[32m    alphaFilePath:{[m
[32m+[m[32m        type:String,[m
[32m+[m[32m        optional: false,[m
     },[m
     betaTitle: {[m
         type: String,[m
         max: 150,[m
         optional: false,[m
[31m-        label: 'Beta data set title'[m
[32m+[m[32m        label : "Beta data set title"[m
     },[m
     betaDescription: {[m
         type: String,[m
         max: 300,[m
         optional: false,[m
[31m-        label: 'Beta data set description'[m
[32m+[m[32m        label : "Beta data set description"[m
     },[m
     betaFile: {[m
[31m-        type: String,[m
[32m+[m[32m        type:String,[m
         optional: false,[m
[31m-        label: 'Beta data set CSV file (SPARQL query result set)'[m
[32m+[m[32m        label : "Beta data set CSV file (SPARQL query result set)"[m
     },[m
[31m-    betaFilePath: {[m
[31m-        type: String,[m
[31m-        optional: true[m
[31m-    },[m
[31m-    progressId: {[m
[31m-        type: String,[m
[31m-        optional: true[m
[32m+[m[32m    betaFilePath:{[m
[32m+[m[32m        type:String,[m
[32m+[m[32m        optional: false,[m
     }[m
[31m-}, { tracker: Tracker });[m
[31m-[m
[31m-export const FingerprinterProgress = new Mongo.Collection('fingerprinterProgress');[m
[32m+[m[32m}, { tracker: Tracker });[m
\ No newline at end of file[m
[1mdiff --git a/imports/mdg/validatedMethods.js b/imports/mdg/validatedMethods.js[m
[1mindex 1ef5005..5e43cca 100644[m
[1m--- a/imports/mdg/validatedMethods.js[m
[1m+++ b/imports/mdg/validatedMethods.js[m
[36m@@ -1,103 +1,65 @@[m
[31m-import { ValidatedMethod } from 'meteor/mdg:validated-method';[m
[31m-import { Csvs } from '/imports/collections/fileCollection';[m
[31m-import { StatsReportParameters, DiffReportParameters, FingerprinterProgress } from '/imports/collections/reportSchemas';[m
[31m-import SimpleSchema from 'simpl-schema';[m
[32m+[m[32mimport {ValidatedMethod} from 'meteor/mdg:validated-method';[m
[32m+[m[32mimport {Csvs} from '../collections/fileCollection';[m
[32m+[m[32mimport {StatsReportParameters, DiffReportParameters} from "../collections/reportSchemas";[m
 [m
 let fs = Npm.require('fs');[m
 let Future = Npm.require('fibers/future');[m
[31m-let Fiber = Npm.require('fibers');[m
 let uuid = require('node-uuid');[m
 let shell = require('shelljs');[m
 let path = require('path');[m
 [m
 /**[m
[31m-* [startFingerprinterProgress description][m
[31m-* @type {ValidatedMethod}[m
[31m-*/[m
[31m-export const startFingerprinterProgress = new ValidatedMethod({[m
[31m-    name: 'startFingerprinterProgress',[m
[31m-    validate: new SimpleSchema({[m
[31m-        sessionId: { type: String },[m
[31m-        formName: { type: String }[m
[31m-    }).validator(),[m
[31m-    run({ sessionId, formName }) {[m
[31m-        let progressObj = {[m
[31m-            _id: sessionId,[m
[31m-            alphaFile: '',[m
[31m-            betaFile: '',[m
[31m-            configJson: '',[m
[31m-            pythonCall: '',[m
[31m-            createLink: ''[m
[31m-        };[m
[31m-[m
[31m-        return FingerprinterProgress.insert(progressObj, (err) => {[m
[31m-            if (err) throw new Error(err);[m
[31m-        });[m
[31m-    }[m
[31m-});[m
[31m-[m
[31m-export const updateFingerPrinterProgress = new ValidatedMethod({[m
[31m-    name: 'updateFingerPrinterProgress',[m
[31m-    validate(args) {},[m
[31m-    run({ progressId, step }) {[m
[31m-        FingerprinterProgress.update({_id: progressId}, {$set: step}, (err) => {[m
[31m-            if (err) throw new Error(err);[m
[31m-        });[m
[31m-    }[m
[31m-});[m
[31m-[m
[31m-/**[m
[31m-*[m
[31m-*/[m
[32m+[m[32m *[m
[32m+[m[32m */[m
 export const generateDiffReport = new ValidatedMethod({[m
     name: 'generateDiffReport',[m
     validate: DiffReportParameters.validator(),[m
     run({[m
[31m-        alphaTitle, alphaDescription, alphaFile, alphaFilePath,[m
[31m-        betaTitle, betaDescription, betaFile, betaFilePath, progressId[m
[31m-    }) {[m
[32m+[m[32m            alphaTitle, alphaDescription, alphaFile, alphaFilePath,[m
[32m+[m[32m            betaTitle, betaDescription, betaFile, betaFilePath[m
[32m+[m[32m        }) {[m
[32m+[m[32m        console.log({[m
[32m+[m[32m            alphaTitle, alphaDescription, alphaFile, alphaFilePath,[m
[32m+[m[32m            betaTitle, betaDescription, betaFile, betaFilePath[m
[32m+[m[32m        });[m
         ({configPath, reportFileName} = generateConfigJSON({[m
             alphaTitle, alphaDescription, alphaFile, alphaFilePath,[m
             betaTitle, betaDescription, betaFile, betaFilePath[m
[31m-        }, progressId));[m
[31m-[m
[31m-        callFingerprinter(configPath, 'diff', progressId, reportFileName);[m
[32m+[m[32m        }));[m
[32m+[m[32m        let fingerprintResults = callFingerprinter(configPath, "diff");[m
[32m+[m[32m        let cursor = addReportToCsvsCollection(reportFileName);[m
[32m+[m[32m        return {fileCursor: cursor, bashResults: fingerprintResults};[m
     }[m
 });[m
 [m
 /**[m
[31m-*[m
[31m-*/[m
[32m+[m[32m *[m
[32m+[m[32m */[m
 export const generateStatsReport = new ValidatedMethod({[m
     name: 'generateStatsReport',[m
     validate: StatsReportParameters.validator(),[m
[31m-    run({[m
[31m-        alphaTitle, alphaDescription, alphaFile, alphaFilePath, progressId[m
[31m-    }) {[m
[31m-        ({configPath, reportFileName} = generateConfigJSON({[m
[31m-            alphaTitle, alphaDescription, alphaFile, alphaFilePath[m
[31m-        }, progressId));[m
[31m-[m
[31m-        callFingerprinter(configPath, 'stats', progressId, reportFileName);[m
[32m+[m[32m    run({alphaTitle, alphaDescription, alphaFile, alphaFilePath}) {[m
[32m+[m[32m        ({configPath, reportFileName} = generateConfigJSON({alphaTitle, alphaDescription, alphaFile, alphaFilePath}));[m
[32m+[m[32m        let fingerprintResults = callFingerprinter(configPath, "stats");[m
[32m+[m[32m        let cursor = addReportToCsvsCollection(reportFileName);[m
[32m+[m[32m        return {fileCursor: cursor, bashResults: fingerprintResults};[m
     }[m
 });[m
 [m
 /**[m
[31m-*[m
[31m-* @param alphaTitle[m
[31m-* @param alphaDescription[m
[31m-* @param alphaFilePath[m
[31m-* @param betaTitle[m
[31m-* @param betaDescription[m
[31m-* @param betaFilePath[m
[31m-* @returns {*}[m
[31m-*/[m
[32m+[m[32m *[m
[32m+[m[32m * @param alphaTitle[m
[32m+[m[32m * @param alphaDescription[m
[32m+[m[32m * @param alphaFilePath[m
[32m+[m[32m * @param betaTitle[m
[32m+[m[32m * @param betaDescription[m
[32m+[m[32m * @param betaFilePath[m
[32m+[m[32m * @returns {*}[m
[32m+[m[32m */[m
 function generateConfigJSON({[m
[31m-    alphaTitle, alphaDescription, alphaFilePath,[m
[31m-    betaTitle, betaDescription, betaFilePath[m
[31m-}, progressId) {[m
[31m-    updateProgress(progressId, { configJson: 'Starting to collect information about file(s) '});[m
[31m-[m
[32m+[m[32m                                alphaTitle, alphaDescription, alphaFilePath,[m
[32m+[m[32m                                betaTitle, betaDescription, betaFilePath[m
[32m+[m[32m                            }) {[m
     let uploads = Meteor.settings.public.path.uploads;[m
     let configFileName = uploads + '/config_' + uuid.v4() + ".json";[m
     let reportFileName = uploads + '/report_' + uuid.v4();[m
[36m@@ -120,79 +82,55 @@[m [mfunction generateConfigJSON({[m
     let fileRef = CsvsCollectionSyncWrite(JSON.stringify(content, null, 4), {[m
         fileName: configFileName,[m
         type: 'application/json'[m
[31m-    }, progressId);[m
[32m+[m[32m    });[m
     return {configPath: fileRef.path, reportFileName: reportFileName};[m
 }[m
 [m
 /**[m
[31m-*[m
[31m-* @param content[m
[31m-* @param properties[m
[31m-* @returns {*}[m
[31m-*/[m
[31m-function CsvsCollectionSyncWrite(content, properties, progressId) {[m
[32m+[m[32m *[m
[32m+[m[32m * @param content[m
[32m+[m[32m * @param properties[m
[32m+[m[32m * @returns {*}[m
[32m+[m[32m */[m
[32m+[m[32mfunction CsvsCollectionSyncWrite(content, properties) {[m
     let thisFuture = new Future();[m
     Csvs.write(content, properties, (error, fileRef) => {[m
         if (error) throw error;[m
         thisFuture.return(fileRef);[m
[31m-        updateProgress(progressId, { configJson: 'done'});[m
     });[m
     return thisFuture.wait();[m
 }[m
 [m
 /**[m
[31m-*[m
[31m-* @param configJsonPath[m
[31m-* @returns {*}[m
[31m-*/[m
[32m+[m[32m *[m
[32m+[m[32m * @param configJsonPath[m
[32m+[m[32m * @returns {*}[m
[32m+[m[32m */[m
 [m
[31m-function callFingerprinter(configJsonPath, command, progressId, reportPath) {[m
[32m+[m[32mfunction callFingerprinter(configJsonPath, command) {[m
     let thisFuture = new Future();[m
[31m-    return new Fiber(function() {[m
[31m-        updateProgress(progressId, { pythonCall: 'Starting to generate report...'});[m
[31m-[m
[31m-        shell.exec('fingerprint ' + command + " " + configJsonPath, function (code, stdout, stderr) {[m
[31m-            if (code !== 0) {[m
[31m-                throw new Error("Could not successfully call RDF Fingerprinter");[m
[31m-            }[m
[31m-            thisFuture.return({[m
[31m-                code: code,[m
[31m-                out: stdout,[m
[31m-                err: stderr[m
[31m-            });[m
[32m+[m[32m    shell.exec('fingerprint ' + command + " " + configJsonPath, function (code, stdout, stderr) {[m
[32m+[m[32m        if (code != 0) {[m
[32m+[m[32m            throw new Error("Could not successfully call RDF Fingerprinter");[m
[32m+[m[32m        }[m
[32m+[m[32m        thisFuture.return({[m
[32m+[m[32m            code: code,[m
[32m+[m[32m            out: stdout,[m
[32m+[m[32m            err: stderr[m
         });[m
[31m-[m
[31m-        thisFuture.wait();[m
[31m-[m
[31m-        updateProgress(progressId, { pythonCall: 'done'});[m
[31m-[m
[31m-        updateProgress(progressId, { createLink: 'Creating link for downloading the report...'});[m
[31m-[m
[31m-        addReportToCsvsCollection(reportPath, progressId);[m
[31m-[m
[31m-        updateProgress(progressId, { createLink: 'done'});[m
[31m-[m
[31m-    }).run();[m
[32m+[m[32m    });[m
[32m+[m[32m    return thisFuture.wait();[m
 }[m
 [m
 /**[m
[31m-*[m
[31m-* @param reportPath[m
[31m-*/[m
[31m-function addReportToCsvsCollection(reportPath, progressId) {[m
[32m+[m[32m *[m
[32m+[m[32m * @param reportPath[m
[32m+[m[32m */[m
[32m+[m[32mfunction addReportToCsvsCollection(reportPath) {[m
     let fileData = fs.readFileSync(reportPath + ".pdf");[m
     let fileRef = CsvsCollectionSyncWrite(fileData, {[m
[31m-        meta: {[m
[31m-            sessionId: progressId[m
[31m-        },[m
         fileName: reportPath + ".pdf",[m
         type: 'application/pdf',[m
     });[m
     return fileRef;[m
[31m-}[m
[31m-[m
[31m-function updateProgress(progressId, step) {[m
[31m-    Meteor.call('updateFingerPrinterProgress', { progressId, step }, (err) => {[m
[31m-        if (err) console.error(err);[m
[31m-    });[m
[31m-}[m
[32m+[m[32m}[m
\ No newline at end of file[m
[1mdiff --git a/imports/ui/errors/40x.html b/imports/ui/errors/40x.html[m
[1mnew file mode 100644[m
[1mindex 0000000..c24fce4[m
[1m--- /dev/null[m
[1m+++ b/imports/ui/errors/40x.html[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m<template name="40x">[m
[32m+[m[32m    <!-- TODO -->[m
[32m+[m[32m</template>[m
\ No newline at end of file[m
[1mdiff --git a/imports/ui/errors/50x.html b/imports/ui/errors/50x.html[m
[1mnew file mode 100644[m
[1mindex 0000000..ef1699a[m
[1m--- /dev/null[m
[1m+++ b/imports/ui/errors/50x.html[m
[36m@@ -0,0 +1,3 @@[m
[32m+[m[32m<template name="50x">[m
[32m+[m[32m    <!-- TODO -->[m
[32m+[m[32m</template>[m
\ No newline at end of file[m
[1mdiff --git a/imports/ui/layouts/layouts.js b/imports/ui/layouts/layouts.js[m
[1mindex 3ee7b59..0102405 100755[m
[1m--- a/imports/ui/layouts/layouts.js[m
[1m+++ b/imports/ui/layouts/layouts.js[m
[36m@@ -1,5 +1,5 @@[m
[31m-import './MainLayout.html';[m
[31m-import './Home.html';[m
[31m-import '../views/Diff';[m
[31m-import '../views/Stats';[m
[31m-import '../views/ProgressForm';[m
[32m+[m[32mimport "./MainLayout.html";[m
[32m+[m[32mimport "./Home.html";[m
[32m+[m[32mimport "../views/Diff";[m
[32m+[m[32mimport "../views/Stats";[m
[41m+[m
[1mdiff --git a/imports/ui/partials/partials.js b/imports/ui/partials/partials.js[m
[1mindex bbb01a1..767a3f6 100755[m
[1m--- a/imports/ui/partials/partials.js[m
[1m+++ b/imports/ui/partials/partials.js[m
[36m@@ -1,4 +1,4 @@[m
 import "./Header.html";[m
 import "./Footer.html";[m
 import "./Footer";[m
[31m-[m
[32m+[m[32mimport "./warningWait.html";[m
[1mdiff --git a/imports/ui/partials/warningWait.html b/imports/ui/partials/warningWait.html[m
[1mnew file mode 100644[m
[1mindex 0000000..04ee392[m
[1m--- /dev/null[m
[1m+++ b/imports/ui/partials/warningWait.html[m
[36m@@ -0,0 +1,5 @@[m
[32m+[m[32m<template name="warningWait">[m
[32m+[m[32m    <div class="alert alert-warning" role="alert">[m
[32m+[m[32m        <strong>Note:</strong> The report generation operation takes some time usually up to 30 seconds.[m
[32m+[m[32m    </div>[m
[32m+[m[32m</template>[m
\ No newline at end of file[m
[1mdiff --git a/imports/ui/views/Diff.html b/imports/ui/views/Diff.html[m
[1mindex 49f34ea..7855dba 100755[m
[1m--- a/imports/ui/views/Diff.html[m
[1m+++ b/imports/ui/views/Diff.html[m
[36m@@ -1,62 +1,37 @@[m
 <template name="Diff">[m
     <div class="container-fluid">[m
[31m-        <div class="row">[m
[31m-            <div class="col-md-8 col-md-offset-2">[m
[31m-                <div class="panel panel-primary">[m
[31m-                    {{#if startedProgress}}[m
[31m-                        <div class="panel-heading">[m
[31m-                            <h3 class="panel-title">[m
[31m-                                {{#if scriptRunning}}[m
[31m-                                    <i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-                                    Running <b>"Fingerprinter"</b> script[m
[31m-                                {{else}}[m
[31m-                                    Done![m
[31m-                                {{/if}}[m
[31m-                            </h3>[m
[31m-                        </div>[m
[31m-                        <div class="panel-body" style="padding-left: 10px;">[m
[31m-                            {{> ProgressForm}}[m
[31m-                        </div>[m
[31m-                    {{else}}[m
[31m-                        <div class="panel-heading">[m
[31m-                            <h3 class="panel-title">Comparative statistical report</h3>[m
[31m-                        </div>[m
[31m-                        <div class="panel-body">[m
[31m-                            {{#autoForm schema=diffSchema id="diffForm"}}[m
[31m-                                {{> afQuickField name="alphaTitle" defaultValue="Dataset Alpha"}}[m
[31m-                                {{> afQuickField name="alphaDescription" defaultValue="Description of the dataset Alpha"}}[m
[31m-                                {{> afQuickField id="alphaFile" name="alphaFile" type="file" class="filestyle" data-buttonname="btn-primary" data-buttontext="Select File" tabindex="-1"}}[m
[31m-                                <div class="bootstrap-filestyle-alpha input-group">[m
[31m-                                    <input type="text" class="form-control" placeholder="No file" disabled="">[m
[31m-                                    <span class="group-span-filestyle input-group-btn" tabindex="0">[m
[31m-                                    <label for="alphaFile" class="btn btn-primary ">[m
[31m-                                        <span class="icon-span-filestyle glyphicon glyphicon-folder-open"></span>[m
[31m-                                        <span class="buttonText">Select File</span>[m
[31m-                                     </label>[m
[31m-                                    </span>[m
[31m-                                </div>[m
[31m-                                <span class="help-block"></span>[m
[31m-[m
[31m-                                {{> afQuickField name="betaTitle" defaultValue="Dataset Beta"}}[m
[31m-                                {{> afQuickField name="betaDescription" defaultValue="Description of the dataset Beta"}}[m
[31m-                                {{> afQuickField id="betaFile" name="betaFile" type="file" class="filestyle" data-buttonname="btn-primary" data-buttontext="Select File" tabindex="-1"}}[m
[31m-                                <div class="bootstrap-filestyle-beta input-group">[m
[31m-                                    <input type="text" class="form-control" placeholder="No file" disabled="">[m
[31m-                                    <span class="group-span-filestyle input-group-btn" tabindex="0">[m
[31m-                                    <label for="betaFile" class="btn btn-primary ">[m
[31m-                                        <span class="icon-span-filestyle glyphicon glyphicon-folder-open"></span>[m
[31m-                                        <span class="buttonText">Select File</span>[m
[31m-                                     </label>[m
[31m-                                    </span>[m
[31m-                                </div>[m
[31m-                                <span class="help-block"></span>[m
[32m+[m[32m        <div class="col-md-8 col-md-offset-2">[m
[32m+[m[32m            <div class="panel panel-primary">[m
[32m+[m[32m                <div class="panel-heading">[m
[32m+[m[32m                    <h3 class="panel-title"><i class="fa fa-spinner fa-spin fa-fw" id = "formSpinner"></i>Comparative statistical report</h3>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <div class="panel-body">[m
[32m+[m[32m                    {{#autoForm schema=diffSchema id="diffForm"}}[m
[32m+[m[32m                        {{> afQuickField name="alphaTitle" defaultValue="Data set Alpha"}}[m
[32m+[m[32m                        {{> afQuickField name="alphaDescription" defaultValue="Description of the data set Alpha"}}[m
[32m+[m[32m                        {{> afQuickField id="alphaFile" name="alphaFile" type="file"}}[m
[32m+[m[32m                        {{> afQuickField name="alphaFilePath" value = currentAlphaFilePath type="hidden"}}[m
 [m
[31m-                                <button id="formSubmitButton" type="submit" class="btn btn-primary">Generate Report</button>[m
[31m-                            {{/autoForm}}[m
[31m-                        </div>[m
[31m-                    {{/if}}[m
[32m+[m[32m                        {{> afQuickField name="betaTitle" defaultValue="Data set Beta"}}[m
[32m+[m[32m                        {{> afQuickField name="betaDescription" defaultValue="Description of the data set Beta"}}[m
[32m+[m[32m                        {{> afQuickField id="betaFile" name="betaFile" type="file"}}[m
[32m+[m[32m                        {{> afQuickField name="betaFilePath" value = currentBetaFilePath type="hidden"}}[m
[32m+[m[32m                        {{> warningWait }}[m
[32m+[m[32m                        <button id="formSubmitButton" type="submit" class="btn btn-primary center-block">Generate Report</button>[m
[32m+[m[32m                    {{/autoForm}}[m
                 </div>[m
             </div>[m
[32m+[m[32m            {{#if reportReference}}[m
[32m+[m[32m                <div class="panel panel-primary">[m
[32m+[m[32m                    <div class="panel-body">[m
[32m+[m[32m                        The Report is available at this[m
[32m+[m[32m                        <a class="alert-link" id="report-link"[m
[32m+[m[32m                           href="{{reportReference.link}}?download=true"[m
[32m+[m[32m                           download="{{reportReference.name}}" target="_blank">[m
[32m+[m[32m                            {{reportReference.name}}</a>.[m
[32m+[m[32m                    </div>[m
[32m+[m[32m                </div>[m
[32m+[m[32m            {{/if}}[m
         </div>[m
     </div>[m
 </template>[m
[1mdiff --git a/imports/ui/views/Diff.js b/imports/ui/views/Diff.js[m
[1mindex 8371f4e..c14c199 100644[m
[1m--- a/imports/ui/views/Diff.js[m
[1m+++ b/imports/ui/views/Diff.js[m
[36m@@ -1,93 +1,72 @@[m
[31m-import { Meteor } from 'meteor/meteor';[m
[31m-import { Template } from 'meteor/templating';[m
[31m-import { ReactiveVar } from 'meteor/reactive-var';[m
[31m-import { DiffReportParameters, FingerprinterProgress } from '/imports/collections/reportSchemas';[m
[31m-import { uploadFiles, setFileDescription, updateProgress } from './utils';[m
[31m-[m
[31m-import './Diff.html';[m
[31m-[m
[31m-let uuid = require('node-uuid');[m
[32m+[m[32mimport "./Diff.html";[m
[32m+[m[32mimport {Template} from 'meteor/templating';[m
[32m+[m[32mimport {DiffReportParameters} from "../../collections/reportSchemas";[m
[32m+[m[32mimport {Csvs} from "../../collections/fileCollection";[m
[32m+[m[32mimport {uploadFile, serverIdle, serverWorking} from "./utils";[m
 [m
 Template.Diff.onCreated(function () {[m
[31m-    Meteor.subscribe('fingerprinterProgress');[m
[32m+[m[32m    Meteor.subscribe('files.csvs.all');[m
[32m+[m[32m    this.currentUpload = new ReactiveVar(false);[m
[32m+[m[32m    Session.set("reportReferenceFileId", null);[m
[32m+[m[32m});[m
 [m
[31m-    this.startedFingerprinter = new ReactiveVar( false );[m
[32m+[m[32mTemplate.Diff.onRendered(function () {[m
[32m+[m[32m    serverIdle();[m
 });[m
 [m
 Template.Diff.helpers({[m
     diffSchema(){[m
         return DiffReportParameters;[m
     },[m
[31m-    startedProgress() {[m
[31m-        return Template.instance().startedFingerprinter.get();[m
[32m+[m[32m    currentUpload: function () {[m
[32m+[m[32m        return Template.instance().currentUpload.get();[m
     },[m
[31m-    scriptRunning() {[m
[31m-        let progress = FingerprinterProgress.findOne({_id: Session.get('currentSession')});[m
[31m-[m
[31m-        if (progress !== void 0) {[m
[31m-            if (progress.createLink == 'done') {[m
[31m-                return false;[m
[31m-            } else {[m
[31m-                return true;[m
[31m-            }[m
[31m-        } else {[m
[31m-            return true;[m
[31m-        }[m
[32m+[m[32m    currentAlphaFilePath(){[m
[32m+[m[32m        return Session.get("alphaFilePath");[m
[32m+[m[32m    },[m
[32m+[m[32m    currentBetaFilePath(){[m
[32m+[m[32m        return Session.get("betaFilePath");[m
[32m+[m[32m    },[m
[32m+[m[32m    reportReference(){[m
[32m+[m[32m        return Csvs.findOne({_id: Session.get("reportReferenceFileId")}, {});[m
     }[m
 });[m
 [m
 Template.Diff.events({[m
[31m-    'submit #diffForm': function (event, template) {[m
[32m+[m[32m    "submit #diffForm": function (event) {[m
         event.preventDefault();[m
[31m-        template.startedFingerprinter.set( true );[m
[31m-[m
         let form = event.target;[m
[31m-        let sessionId = uuid.v4();[m
[31m-[m
[31m-        Session.set('currentSession', sessionId);[m
[31m-[m
[31m-        Meteor.call('startFingerprinterProgress', { sessionId, formName: 'stats'}, (err, res) => {[m
[32m+[m[32m        const formData = {[m
[32m+[m[32m            alphaTitle: form.alphaTitle.value,[m
[32m+[m[32m            alphaDescription: form.alphaDescription.value,[m
[32m+[m[32m            alphaFile: form.alphaFile.value,[m
[32m+[m[32m            alphaFilePath: form.alphaFilePath.value,[m
[32m+[m
[32m+[m[32m            betaTitle: form.betaTitle.value,[m
[32m+[m[32m            betaDescription: form.betaDescription.value,[m
[32m+[m[32m            betaFile: form.betaFile.value,[m
[32m+[m[32m            betaFilePath: form.betaFilePath.value[m
[32m+[m[32m        };[m
[32m+[m[32m        Meteor.call("generateDiffReport", formData, (err, res) => {[m
             if (err) console.error(err);[m
[31m-[m
[31m-            let formData = {[m
[31m-                alphaTitle: form.alphaTitle.value,[m
[31m-                alphaDescription: form.alphaDescription.value,[m
[31m-                alphaFile: 'alpha',[m
[31m-[m
[31m-                betaTitle: form.betaTitle.value,[m
[31m-                betaDescription: form.betaDescription.value,[m
[31m-                betaFile: 'beta'[m
[31m-            };[m
[31m-[m
[31m-            uploadFiles(form.alphaFile.files, template, function(path) {[m
[31m-                formData.alphaFilePath = path;[m
[31m-[m
[31m-                updateProgress(sessionId, {alphaFile: 'done'});[m
[31m-[m
[31m-                uploadFiles(form.betaFile.files, template, function(path) {[m
[31m-                    formData.betaFilePath = path;[m
[31m-                    formData.progressId = sessionId;[m
[31m-[m
[31m-                    updateProgress(sessionId, {betaFile: 'done'});[m
[31m-[m
[31m-                    Meteor.call('generateDiffReport', formData, (err, res) => {[m
[31m-                        if (err) console.error(err);[m
[31m-                    });[m
[31m-                });[m
[31m-            });[m
[32m+[m[32m            serverIdle();[m
[32m+[m[32m            Session.set("reportReferenceFileId", res.fileCursor._id);[m
         });[m
     },[m
[31m-    "change #alphaFile": (event, template) => {[m
[31m-        setFileDescription(event);[m
[32m+[m[32m    "change #alphaFile": (e, template) => {[m
[32m+[m[32m        uploadFile(e, template, "alphaFilePath")[m
     },[m
[31m-    "change #betaFile": (event, template) => {[m
[31m-        setFileDescription(event, 'diff');[m
[31m-    },[m
[31m-    'click #download-report': (e) => {[m
[31m-        FingerprinterProgress.remove({_id: Session.get('currentSession')}, (err) => {[m
[31m-            if (err) throw new Error(err);[m
[31m-            Session.set(undefined);[m
[31m-            location.reload();[m
[31m-        });[m
[32m+[m[32m    "change #betaFile": (e, template) => {[m
[32m+[m[32m        uploadFile(e, template, "betaFilePath")[m
     }[m
 });[m
[32m+[m
[32m+[m[32mlet hooksObject = {[m
[32m+[m[32m    beginSubmit: function () {[m
[32m+[m[32m        Session.set("reportReferenceFileId", null);[m
[32m+[m[32m        serverWorking();[m
[32m+[m[32m    },[m
[32m+[m[32m    endSubmit: function () {[m
[32m+[m[32m    }[m
[32m+[m[32m};[m
[32m+[m[32mAutoForm.addHooks(["diffForm"], hooksObject);[m
\ No newline at end of file[m
[1mdiff --git a/imports/ui/views/ProgressForm.html b/imports/ui/views/ProgressForm.html[m
[1mdeleted file mode 100644[m
[1mindex 7062609..0000000[m
[1m--- a/imports/ui/views/ProgressForm.html[m
[1m+++ /dev/null[m
[36m@@ -1,62 +0,0 @@[m
[31m-<template name="ProgressForm">[m
[31m-	{{#each progress}}[m
[31m-		{{#if alphaFile}}[m
[31m-			<h3>Uploading alpha file:[m
[31m-				{{#if done alphaFile}}[m
[31m-					<i class="fa fa-check fa-1x"></i>[m
[31m-				{{else}}[m
[31m-					<i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-					<!-- {{alphaFile}} -->[m
[31m-				{{/if}}[m
[31m-			</h3>[m
[31m-		{{/if}}[m
[31m-		{{#if betaFile}}[m
[31m-			<h3>Uploading beta file:[m
[31m-				{{#if done betaFile}}[m
[31m-					<i class="fa fa-check fa-1x"></i>[m
[31m-				{{else}}[m
[31m-					<i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-					<!-- {{betaFile}} -->[m
[31m-				{{/if}}[m
[31m-			</h3>[m
[31m-		{{/if}}[m
[31m-		{{#if configJson}}[m
[31m-			<h3>Collect infomation about file(s):[m
[31m-				{{#if done configJson}}[m
[31m-					<i class="fa fa-check fa-1x"></i>[m
[31m-				{{else}}[m
[31m-					<i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-					<!-- {{configJson}} -->[m
[31m-				{{/if}}[m
[31m-			</h3>[m
[31m-		{{/if}}[m
[31m-		{{#if pythonCall}}[m
[31m-			<h3>Generating report file:[m
[31m-				{{#if done pythonCall}}[m
[31m-					<i class="fa fa-check fa-1x"></i>[m
[31m-				{{else}}[m
[31m-					<i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-					<!-- {{pythonCall}} -->[m
[31m-				{{/if}}[m
[31m-			</h3>[m
[31m-		{{/if}}[m
[31m-		{{#if createLink}}[m
[31m-			<h3>Creating link to download report:[m
[31m-				{{#if done createLink}}[m
[31m-					<i class="fa fa-check fa-1x"></i>[m
[31m-				{{else}}[m
[31m-					<i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-					<!-- {{createLink}} -->[m
[31m-				{{/if}}[m
[31m-			</h3>[m
[31m-		{{/if}}[m
[31m-	{{/each}}[m
[31m-	{{#if report}}[m
[31m-		<div class="text-center">[m
[31m-			<a href="{{report.link}}?download=true" id="download-report" download="{{report.name}}" class="btn btn-success btn-lg">[m
[31m-				<i class="fa fa-download" aria-hidden="true"></i>[m
[31m-				Your report file[m
[31m-			</a>[m
[31m-		</div>[m
[31m-	{{/if}}[m
[31m-</template>[m
[1mdiff --git a/imports/ui/views/ProgressForm.js b/imports/ui/views/ProgressForm.js[m
[1mdeleted file mode 100644[m
[1mindex 6717277..0000000[m
[1m--- a/imports/ui/views/ProgressForm.js[m
[1m+++ /dev/null[m
[36m@@ -1,34 +0,0 @@[m
[31m-import { Meteor } from 'meteor/meteor';[m
[31m-import { Template } from 'meteor/templating';[m
[31m-import { Csvs } from '/imports/collections/fileCollection';[m
[31m-import { FingerprinterProgress } from '/imports/collections/reportSchemas';[m
[31m-[m
[31m-import './ProgressForm.html';[m
[31m-[m
[31m-Template.ProgressForm.onCreated(function() {[m
[31m-	Meteor.subscribe('files.csvs.all');[m
[31m-});[m
[31m-[m
[31m-Template.ProgressForm.helpers({[m
[31m-	progress() {[m
[31m-		return FingerprinterProgress.find();[m
[31m-	},[m
[31m-	report() {[m
[31m-		let report = Csvs.findOne({meta: {sessionId: Session.get('currentSession')}});[m
[31m-		if (report !== void 0) {[m
[31m-			return report;[m
[31m-		}[m
[31m-	}[m
[31m-});[m
[31m-[m
[31m-Template.ProgressForm.events({[m
[31m-[m
[31m-});[m
[31m-[m
[31m-Template.registerHelper('done', function(done) {[m
[31m-	if (done == 'done') {[m
[31m-		return true;[m
[31m-	} else {[m
[31m-		return false;[m
[31m-	}[m
[31m-});[m
[1mdiff --git a/imports/ui/views/Stats.html b/imports/ui/views/Stats.html[m
[1mindex a7d933d..ef85778 100755[m
[1m--- a/imports/ui/views/Stats.html[m
[1m+++ b/imports/ui/views/Stats.html[m
[36m@@ -1,47 +1,32 @@[m
 <template name="Stats">[m
     <div class="container-fluid">[m
[31m-        <div class="row">[m
[31m-            <div class="col-md-8 col-md-offset-2">[m
[31m-                <div class="panel panel-primary">[m
[31m-                    {{#if startedProgress}}[m
[31m-                        <div class="panel-heading">[m
[31m-                            <h3 class="panel-title">[m
[31m-                                {{#if scriptRunning}}[m
[31m-                                    <i class="fa fa-spinner fa-pulse fa-1x fa-fw"></i>[m
[31m-                                    Running <b>"Fingerprinter"</b> script[m
[31m-                                {{else}}[m
[31m-                                    Done![m
[31m-                                {{/if}}[m
[31m-                            </h3>[m
[31m-                        </div>[m
[31m-                        <div class="panel-body" style="padding-left: 10px;">[m
[31m-                            {{> ProgressForm}}[m
[31m-                        </div>[m
[31m-                    {{else}}[m
[31m-                        <div class="panel-heading">[m
[31m-                            <h3 class="panel-title">Descriptive statistical report</h3>[m
[31m-                        </div>[m
[31m-                        <div class="panel-body">[m
[31m-                            {{#autoForm schema=statsSchema id="statsForm"}}[m
[31m-                                {{> afQuickField name="alphaTitle" defaultValue="Dataset Alpha"}}[m
[31m-                                {{> afQuickField name="alphaDescription" defaultValue="Description of the dataset Alpha"}}[m
[31m-                                {{> afQuickField id="alphaFile" name="alphaFile" type="file" class="filestyle" data-buttonname="btn-primary" data-buttontext="Select File" tabindex="-1"}}[m
[31m-                                <div class="bootstrap-filestyle-alpha input-group">[m
[31m-                                    <input type="text" class="form-control" placeholder="No file" disabled="">[m
[31m-                                    <span class="group-span-filestyle input-group-btn" tabindex="0">[m
[31m-                                        <label for="alphaFile" class="btn btn-primary ">[m
[31m-                                            <span class="icon-span-filestyle glyphicon glyphicon-folder-open"></span>[m
[31m-                                            <span class="buttonText">Select File</span>[m
[31m-                                        </label>[m
[31m-                                    </span>[m
[31m-                                </div>[m
[31m-                                <span class="help-block"></span>[m
[31m-                                <button id="formSubmitButton" type="submit" class="btn btn-primary">Generate Report</button>[m
[31m-                            {{/autoForm}}[m
[31m-                        </div>[m
[31m-                    {{/if}}[m
[32m+[m[32m        <div class="col-md-8 col-md-offset-2">[m
[32m+[m[32m            <div class="panel panel-primary">[m
[32m+[m[32m                <div class="panel-heading">[m
[32m+[m[32m                    <h3 class="panel-title"><i class="fa fa-spinner fa-spin fa-fw" id = "formSpinner"></i>Descriptive statistical report</h3>[m
[32m+[m[32m                </div>[m
[32m+[m[32m                <div class="panel-body">[m
[32m+[m[32m                    {{#autoForm schema=statsSchema id="statsForm"}}[m
[32m+[m[32m                        {{> afQuickField name="alphaTitle" defaultValue="Data set Alpha"}}[m
[32m+[m[32m                        {{> afQuickField name="alphaDescription" defaultValue="Description of the data set Alpha"}}[m
[32m+[m[32m                        {{> afQuickField id="alphaFile" name="alphaFile" type="file"}}[m
[32m+[m[32m                        {{> afQuickField name="alphaFilePath" value = currentAlphaFilePath type="hidden"}}[m
[32m+[m[32m                        {{> warningWait }}[m
[32m+[m[32m                        <button id="formSubmitButton" type="submit" class="btn btn-primary center-block">Generate Report</button>[m
[32m+[m[32m                    {{/autoForm}}[m
[32m+[m[32m                </div>[m
[32m+[m[32m            </div>[m
[32m+[m[32m            {{#if reportReference}}[m
[32m+[m[32m            <div class="panel panel-primary">[m
[32m+[m[32m                <div class="panel-body">[m
[32m+[m[32m                    The Report is available at this[m
[32m+[m[32m                    <a class="alert-link" id="report-link"[m
[32m+[m[32m                       href="{{reportReference.link}}?download=true"[m
[32m+[m[32m                       download="{{reportReference.name}}" target="_blank">[m
[32m+[m[32m                        {{reportReference.name}}</a>.[m
                 </div>[m
             </div>[m
[32m+[m[32m            {{/if}}[m
         </div>[m
     </div>[m
 </template>[m
[1mdiff --git a/imports/ui/views/Stats.js b/imports/ui/views/Stats.js[m
[1mindex e17c67b..0a7f7cc 100644[m
[1m--- a/imports/ui/views/Stats.js[m
[1m+++ b/imports/ui/views/Stats.js[m
[36m@@ -1,80 +1,63 @@[m
[31m-import { Meteor } from 'meteor/meteor';[m
[31m-import { Template } from 'meteor/templating';[m
[31m-import { ReactiveVar } from 'meteor/reactive-var';[m
[31m-import { StatsReportParameters, FingerprinterProgress } from '/imports/collections/reportSchemas';[m
[31m-import { uploadFiles, setFileDescription, updateProgress } from './utils';[m
[32m+[m[32mimport "./Stats.html";[m
[32m+[m[32mimport {Template} from 'meteor/templating';[m
[32m+[m[32mimport {StatsReportParameters} from "../../collections/reportSchemas";[m
[32m+[m[32mimport {Csvs} from "../../collections/fileCollection";[m
[32m+[m[32mimport {uploadFile, serverIdle, serverWorking} from "./utils";[m
 [m
[31m-import './Stats.html';[m
[31m-[m
[31m-let uuid = require('node-uuid');[m
 [m
 Template.Stats.onCreated(function () {[m
[31m-    Meteor.subscribe('fingerprinterProgress');[m
[32m+[m[32m    Meteor.subscribe('files.csvs.all');[m
[32m+[m[32m    this.currentUpload = new ReactiveVar(false);[m
[32m+[m[32m    Session.set("reportReferenceFileId", null);[m
[32m+[m[32m});[m
 [m
[31m-    this.startedFingerprinter = new ReactiveVar( false );[m
[32m+[m[32mTemplate.Stats.onRendered(function () {[m
[32m+[m[32m    serverIdle();[m
 });[m
 [m
 Template.Stats.helpers({[m
     statsSchema(){[m
         return StatsReportParameters;[m
     },[m
[31m-    startedProgress() {[m
[31m-        return Template.instance().startedFingerprinter.get();[m
[32m+[m[32m    currentUpload(){[m
[32m+[m[32m        return Template.instance().currentUpload.get();[m
     },[m
[31m-    scriptRunning() {[m
[31m-        let progress = FingerprinterProgress.findOne({_id: Session.get('currentSession')});[m
[31m-[m
[31m-        if (progress !== void 0) {[m
[31m-            if (progress.createLink == 'done') {[m
[31m-                return false;[m
[31m-            } else {[m
[31m-                return true;[m
[31m-            }[m
[31m-        } else {[m
[31m-            return true;[m
[31m-        }[m
[32m+[m[32m    currentAlphaFilePath(){[m
[32m+[m[32m        // return Template.instance().alphaFilePath.get();[m
[32m+[m[32m        return Session.get("alphaFilePath") || "";[m
[32m+[m[32m    },[m
[32m+[m[32m    reportReference(){[m
[32m+[m[32m        return Csvs.findOne({_id: Session.get("reportReferenceFileId")}, {});[m
     }[m
 });[m
 [m
 Template.Stats.events({[m
[31m-    'submit #statsForm': function (event, template) {[m
[32m+[m[32m    "submit #statsForm": function (event) {[m
         event.preventDefault();[m
[31m-        template.startedFingerprinter.set( true );[m
[31m-[m
         let form = event.target;[m
[31m-        let sessionId = uuid.v4();[m
[31m-[m
[31m-        Session.set('currentSession', sessionId);[m
[31m-[m
[31m-        Meteor.call('startFingerprinterProgress', { sessionId, formName: 'stats'}, (err, res) => {[m
[32m+[m[32m        const formData = {[m
[32m+[m[32m            alphaTitle: form.alphaTitle.value,[m
[32m+[m[32m            alphaDescription: form.alphaDescription.value,[m
[32m+[m[32m            alphaFile: form.alphaFile.value,[m
[32m+[m[32m            alphaFilePath: form.alphaFilePath.value[m
[32m+[m[32m        };[m
[32m+[m[32m        Meteor.call("generateStatsReport", formData, (err, res) => {[m
             if (err) console.error(err);[m
[31m-[m
[31m-            let formData = {[m
[31m-                alphaTitle: form.alphaTitle.value,[m
[31m-                alphaDescription: form.alphaDescription.value,[m
[31m-                alphaFile: 'alpha'[m
[31m-            };[m
[31m-[m
[31m-            uploadFiles(form.alphaFile.files, template, function(path) {[m
[31m-                formData.alphaFilePath = path;[m
[31m-                formData.progressId = sessionId;[m
[31m-[m
[31m-                updateProgress(sessionId, {alphaFile: 'done'});[m
[31m-[m
[31m-                Meteor.call('generateStatsReport', formData, (err) => {[m
[31m-                    if (err) console.error(err);[m
[31m-                });[m
[31m-            });[m
[32m+[m[32m            serverIdle();[m
[32m+[m[32m            Session.set("reportReferenceFileId",res.fileCursor._id);[m
         });[m
     },[m
[31m-    'change #alphaFile': (e, template) => {[m
[31m-        setFileDescription(e);[m
[31m-    },[m
[31m-    'click #download-report': (e) => {[m
[31m-        FingerprinterProgress.remove({_id: Session.get('currentSession')}, (err) => {[m
[31m-            if (err) throw new Error(err);[m
[31m-            Session.set(undefined);[m
[31m-            location.reload();[m
[31m-        });[m
[32m+[m[32m    "change #alphaFile": (e, template) => {[m
[32m+[m[32m        uploadFile(e, template, "alphaFilePath");[m
     }[m
 });[m
[32m+[m
[32m+[m[32mlet hooksObject = {[m
[32m+[m[32m    beginSubmit: function() {[m
[32m+[m[32m        Session.set("reportReferenceFileId",null);[m
[32m+[m[32m        serverWorking();[m
[32m+[m[32m    },[m
[32m+[m[32m    endSubmit: function() {[m
[32m+[m[32m    }[m
[32m+[m[32m};[m
[32m+[m[32mAutoForm.addHooks(["statsForm"],hooksObject);[m
[1mdiff --git a/imports/ui/views/utils.js b/imports/ui/views/utils.js[m
[1mindex 3609e96..b55fb0b 100755[m
[1m--- a/imports/ui/views/utils.js[m
[1m+++ b/imports/ui/views/utils.js[m
[36m@@ -1,58 +1,40 @@[m
[31m-import { Csvs } from '/imports/collections/fileCollection';[m
[32m+[m[32mimport { Csvs } from '../../collections/fileCollection';[m
 [m
[31m-export function updateProgress(progressId, step) {[m
[31m-    Meteor.call('updateFingerPrinterProgress', { progressId, step }, (err) => {[m
[31m-        if (err) console.error(err);[m
[31m-    });[m
[31m-}[m
[31m-[m
[31m-export function uploadFiles(file, template, callback) {[m
[31m-    if (file && file[0]) {[m
[32m+[m[32mexport function uploadFile(e, template, sessionVariable) {[m
[32m+[m[32m    console.log(e.currentTarget.files);[m
[32m+[m[32m    if (e.currentTarget.files && e.currentTarget.files[0]) {[m
         var upload = Csvs.insert({[m
[31m-            file: file[0],[m
[32m+[m[32m            file: e.currentTarget.files[0],[m
             streams: 'dynamic',[m
             chunkSize: 'dynamic'[m
         }, false);[m
 [m
         upload.on('start', () => {[m
[31m-            // template.currentUpload.set(this);[m
[32m+[m[32m            template.currentUpload.set(this);[m
         });[m
 [m
[31m-        upload.start();[m
[31m-[m
[31m-        return upload.on('end', (err, fileObj) => {[m
[31m-            if (err) {[m
[31m-                console.error('Error during upload: ' + err);[m
[32m+[m[32m        upload.on('end', (error, fileObj) => {[m
[32m+[m[32m            if (error) {[m
[32m+[m[32m                console.error('Error during upload: ' + error);[m
             } else {[m
[31m-                // console.log('File "' + fileObj.name + '" successfully uploaded');[m
[32m+[m[32m                console.log('File "' + fileObj.name + '" successfully uploaded');[m
[32m+[m[32m                Session.set(sessionVariable, fileObj.path);[m
                 //template.filePath.set(fileObj.path);[m
[31m-                callback(fileObj.path);[m
             }[m
[31m-            // template.currentUpload.set(false);[m
[32m+[m[32m            template.currentUpload.set(false);[m
         });[m
[32m+[m[32m        upload.start();[m
     }[m
 }[m
 [m
[31m-export function setFileDescription(event, form) {[m
[31m-    let uploadFile = event.target;[m
[31m-    let fileName = uploadFile.files[0].name;[m
[31m-    let fileSize = uploadFile.files[0].size / 1000000;[m
[31m-[m
[31m-    if (fileSize < 1) {[m
[31m-        if (fileSize.toFixed(3) < 0.800) {[m
[31m-            if ((fileSize * 1000).toFixed(3) < 1) {[m
[31m-                fileSize = (fileSize * 1000000) + ' B';[m
[31m-            } else {[m
[31m-                fileSize = (fileSize * 1000).toFixed(1) + ' KB';[m
[31m-            }[m
[31m-        }[m
[31m-    } else {[m
[31m-        fileSize = fileSize.toFixed(1) + " MB";[m
[31m-    }[m
[32m+[m[32mexport function serverIdle()[m
[32m+[m[32m{[m
[32m+[m[32m    $('#formSubmitButton').prop("disabled", false);[m
[32m+[m[32m    $('#formSpinner').hide();[m
[32m+[m[32m}[m
 [m
[31m-    if (form == 'diff') {[m
[31m-        $(uploadFile.parentNode.parentNode).find('.bootstrap-filestyle-beta input').val(fileName + ' (' + fileSize + ')');[m
[31m-    } else {[m
[31m-        $(uploadFile.parentNode.parentNode).find('.bootstrap-filestyle-alpha input').val(fileName + ' (' + fileSize + ')');[m
[31m-    }[m
[32m+[m[32mexport function serverWorking()[m
[32m+[m[32m{[m
[32m+[m[32m    $('#formSubmitButton').prop("disabled", true);[m
[32m+[m[32m    $('#formSpinner').show();[m
 }[m
[1mdiff --git a/package.json b/package.json[m
[1mindex 34025e6..ac63ab8 100755[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -1,31 +1,31 @@[m
 {[m
[31m-  "name": "fingerprinter-ui(meteor)",[m
[31m-  "description": "The wrapper around the RDF Fingerprinter",[m
[31m-  "author": "Eugeniu Costetchi",[m
[31m-  "homepage": "https://github.com/costezki/fingerprinter-ui",[m
[31m-  "license": "GPL3",[m
[31m-  "repository": {[m
[31m-    "type": "git",[m
[31m-    "url": "https://github.com/costezki/fingerprinter-ui.git"[m
[31m-  },[m
[31m-  "private": false,[m
[31m-  "scripts": {[m
[31m-    "start": "meteor run --settings .mup/settings.json",[m
[31m-    "test": "meteor test --driver-package practicalmeteor:mocha --port 3100 --settings settings.json"[m
[31m-  },[m
[31m-  "dependencies": {[m
[31m-    "babel-polyfill": "~6.23.0",[m
[31m-    "babel-runtime": "^6.23.0",[m
[31m-    "expand-home-dir": "0.0.3",[m
[31m-    "fibers": "^1.0.15",[m
[31m-    "meteor-node-stubs": "~0.2.6",[m
[31m-    "mkdirp": "^0.5.1",[m
[31m-    "node-uuid": "^1.4.8",[m
[31m-    "python-shell": "^0.4.0",[m
[31m-    "shelljs": "~0.7.7",[m
[31m-    "simpl-schema": "^0.2.3"[m
[31m-  },[m
[31m-  "devDependencies": {[m
[31m-    "username": "^2.3.0"[m
[31m-  }[m
[32m+[m[32m    "name": "fingerprinter-ui(meteor)",[m
[32m+[m[32m    "description": "The wrapper around the RDF Fingerprinter",[m
[32m+[m[32m    "author": "Eugeniu Costetchi",[m
[32m+[m[32m    "homepage": "https://github.com/costezki/fingerprinter-ui",[m
[32m+[m[32m    "license": "GPL3",[m
[32m+[m[32m    "repository": {[m
[32m+[m[32m        "type": "git",[m
[32m+[m[32m        "url": "https://github.com/costezki/fingerprinter-ui.git"[m
[32m+[m[32m    },[m
[32m+[m[32m    "private": false,[m
[32m+[m[32m    "scripts": {[m
[32m+[m[32m        "start": "meteor run --settings ./mup/settings.json",[m
[32m+[m[32m        "test": "meteor test --driver-package practicalmeteor:mocha --port 3100 --settings ./mup/settings.json"[m
[32m+[m[32m    },[m
[32m+[m[32m    "dependencies": {[m
[32m+[m[32m        "babel-polyfill": "~6.23.0",[m
[32m+[m[32m        "babel-runtime": "^6.23.0",[m
[32m+[m[32m        "expand-home-dir": "0.0.3",[m
[32m+[m[32m        "fibers": "^1.0.15",[m
[32m+[m[32m        "meteor-node-stubs": "~0.2.6",[m
[32m+[m[32m        "mkdirp": "^0.5.1",[m
[32m+[m[32m        "node-uuid": "^1.4.8",[m
[32m+[m[32m        "python-shell": "^0.4.0",[m
[32m+[m[32m        "shelljs": "~0.7.7",[m
[32m+[m[32m        "simpl-schema": "^0.2.3"[m
[32m+[m[32m    },[m
[32m+[m[32m    "devDependencies": {[m
[32m+[m[32m        "username": "^2.3.0"[m
[32m+[m[32m    }[m
 }[m
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_desc_stats.cpython-36.pyc b/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_desc_stats.cpython-36.pyc[m
[1mdeleted file mode 100755[m
[1mindex 6f7c7a0..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_desc_stats.cpython-36.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_diff_stats.cpython-36.pyc b/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_diff_stats.cpython-36.pyc[m
[1mdeleted file mode 100755[m
[1mindex cd79ba8..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_diff_stats.cpython-36.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_io.cpython-36.pyc b/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_io.cpython-36.pyc[m
[1mdeleted file mode 100755[m
[1mindex cc8aa9a..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_io.cpython-36.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_tex_utils.cpython-36.pyc b/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_tex_utils.cpython-36.pyc[m
[1mdeleted file mode 100755[m
[1mindex 52d476e..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/__pycache__/df_tex_utils.cpython-36.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/df_desc_stats.pyc b/public/RDF-fingerprint-diff/fingerprint/df_desc_stats.pyc[m
[1mdeleted file mode 100755[m
[1mindex ad69eb3..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/df_desc_stats.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/df_diff_stats.pyc b/public/RDF-fingerprint-diff/fingerprint/df_diff_stats.pyc[m
[1mdeleted file mode 100755[m
[1mindex 0bedaa1..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/df_diff_stats.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/df_io.pyc b/public/RDF-fingerprint-diff/fingerprint/df_io.pyc[m
[1mdeleted file mode 100755[m
[1mindex b549055..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/df_io.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/df_tex_utils.pyc b/public/RDF-fingerprint-diff/fingerprint/df_tex_utils.pyc[m
[1mdeleted file mode 100755[m
[1mindex 5487ddc..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/df_tex_utils.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/test/__init__.py b/public/RDF-fingerprint-diff/fingerprint/test/__init__.py[m
[1mdeleted file mode 100755[m
[1mindex e69de29..0000000[m
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/test/__init__.pyc b/public/RDF-fingerprint-diff/fingerprint/test/__init__.pyc[m
[1mdeleted file mode 100755[m
[1mindex ae36c0a..0000000[m
Binary files a/public/RDF-fingerprint-diff/fingerprint/test/__init__.pyc and /dev/null differ
[1mdiff --git a/public/RDF-fingerprint-diff/fingerprint/test/util_test.py b/public/RDF-fingerprint-diff/fingerprint/test/util_test.py[m
[1mdeleted file mode 100755[m
[1mindex a10b5e7..0000000[m
[1m--- a/public/RDF-fingerprint-diff/fingerprint/test/util_test.py[m
[1m+++ /dev/null[m
[36m@@ -1,17 +0,0 @@[m
[31m-import unittest[m
[31m-[m
[31m-from fingerprint.df_tex_utils import url_local_split[m
[31m-[m
[31m-[m
[31m-class MyTestCase(unittest.TestCase):[m
[31m-    def url_split(self):[m
[31m-        self.assertEqual(url_local_split("http://sdffffg.comamde+ddffg.cdep._erere?dfdf#asdf",[m
[31m-                                         ("http://sdffffg.comamde+ddffg.cdep._erere?dfdf#", "#asdf")))[m
[31m-        self.assertEqual(url_local_split("http://sdffffg.comamde+ddffg.cdep._erere?dfdf/asdf",[m
[31m-                                         ("http://sdffffg.comamde+ddffg.cdep._erere?dfdf/", "asdf")))[m
[31m-        self.assertEqual(url_local_split("http://sdffffg.comamde+ddffg.cdep._erere?dfdf/asdf/",[m
[31m-                                         ("http://sdffffg.comamde+ddffg.cdep._erere?dfdf/asdf/", "")))[m
[31m-[m
[31m-[m
[31m-if __name__ == '__main__':[m
[31m-    unittest.main()[m
[1mdiff --git a/public/RDF-fingerprint-diff/resources/fingerprint.rq_EV45OLD.log b/public/RDF-fingerprint-diff/resources/fingerprint.rq_EV45OLD.log[m
[1mdeleted file mode 100755[m
[1mindex 417cf30..0000000[m
[1m--- a/public/RDF-fingerprint-diff/resources/fingerprint.rq_EV45OLD.log[m
[1m+++ /dev/null[m
[36m@@ -1,220 +0,0 @@[m
[31m-stype,p,ootype,propType,scnt,ocnt,cnt,min_sp,max_sp,avg_sp[m
[31m-http://eurovoc.europa.eu/schema#Country,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,240,4,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://eurovoc.europa.eu/schema#isoCountryCode,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,31,1,31,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://publications.europa.eu/ontology/euvoc#status,,data,240,1,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/elements/1.1/identifier,http://eurovoc.europa.eu,data,240,240,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#date,data,240,4,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/terms/replaces,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,4,14,14,1,7,4.857142857142857142857143[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/terms/replaces,http://www.w3.org/2004/02/skos/core#Concept,object,4,14,14,1,7,4.857142857142857142857143[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Country,object,240,3,720,3,3,3.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,240,4,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,237,7262,7262,1,174,48.706141558799228862572294[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,240,84,857,1,9,4.316219369894982497082847[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#broader,http://www.w3.org/2004/02/skos/core#Concept,object,240,84,857,1,9,4.316219369894982497082847[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#definition,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6,137,137,22,24,22.868613138686131386861314[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#historyNote,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,7,96,156,21,23,22.307692307692307692307692[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,240,8,572,2,4,3.527972027972027972027972[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#Thesaurus,object,240,1,240,2,4,3.383333333333333333333333[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,240,9,812,2,4,3.485221674876847290640394[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#notation,http://eurovoc.europa.eu,data,240,240,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,240,6449,6480,27,27,27.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#Country,object,6,6,10,1,7,4.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,56,55,75,1,7,2.066666666666666666666667[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#related,http://www.w3.org/2004/02/skos/core#Concept,object,56,55,75,1,7,2.066666666666666666666667[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#scopeNote,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,18,104,104,1,19,16.057692307692307692307692[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,237,7262,7262,1,174,48.706141558799228862572294[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,237,7262,7262,1,174,48.706141558799228862572294[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,240,6480,6480,27,27,27.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,21,2,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://publications.europa.eu/ontology/euvoc#status,,data,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://purl.org/dc/elements/1.1/identifier,http://eurovoc.europa.eu,data,21,21,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Domain,object,21,4,84,4,4,4.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#notation,http://eurovoc.europa.eu,data,21,21,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,21,567,567,27,27,27.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#MicroThesaurus,object,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#topConceptOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,21,567,567,27,27,27.0[m
[31m-http://eurovoc.europa.eu/schema#Language,http://eurovoc.europa.eu/schema#language,http://www.w3.org/2001/XMLSchema#string,data,24,24,24,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Language,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Language,object,24,1,24,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Language,http://www.w3.org/2000/01/rdf-schema#label,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,24,1056,1056,44,44,44.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://art.uniroma2.it/ontologies/vocbench#hasStatus,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,129,1,129,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#domain,http://eurovoc.europa.eu/schema#Domain,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#domain,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#domain,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#domain,http://www.w3.org/2004/02/skos/core#Concept,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://publications.europa.eu/ontology/euvoc#domain,http://eurovoc.europa.eu/schema#Domain,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://publications.europa.eu/ontology/euvoc#domain,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://publications.europa.eu/ontology/euvoc#domain,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://publications.europa.eu/ontology/euvoc#domain,http://www.w3.org/2004/02/skos/core#Concept,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,129,129,129,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://purl.org/dc/terms/identifier,http://www.w3.org/2001/XMLSchema#string,data,129,129,129,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://purl.org/dc/terms/isPartOf,http://eurovoc.europa.eu/schema#Thesaurus,object,127,1,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://purl.org/dc/terms/isPartOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,127,1,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://rdfs.org/ns/void#usedBy,,data,1,128,128,128,128,128.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#MicroThesaurus,object,129,2,258,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,129,1,129,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#Domain,object,1,21,21,21,21,21.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,128,559,560,1,32,7.807142857142857142857143[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,1,21,21,21,21,21.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://www.w3.org/2004/02/skos/core#Concept,object,128,559,560,1,32,7.807142857142857142857143[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,129,3433,3433,2,27,26.970870958345470434022721[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,1,29,29,29,29,29.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,129,3431,3431,1,27,26.984844068784610900612066[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,193877,8,193877,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://lexvo.org/ontology#acronymFor,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,2000,2045,2056,1,5,1.086575875486381322957198[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://lexvo.org/ontology#acronymFor,http://www.w3.org/2008/05/skos-xl#Label,object,3280,3246,3388,1,5,1.06847697756788665879575[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://lexvo.org/ontology#longFormFor,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,54,56,56,1,2,1.071428571428571428571429[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://lexvo.org/ontology#longFormFor,http://www.w3.org/2008/05/skos-xl#Label,object,96,97,98,1,2,1.040816326530612244897959[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://lexvo.org/ontology#shortFormFor,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,56,54,56,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://lexvo.org/ontology#shortFormFor,http://www.w3.org/2008/05/skos-xl#Label,object,116,114,116,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://publications.europa.eu/ontology/euvoc#status,,data,183136,2,183136,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#date,data,10247,158,10247,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#date,data,10531,115,10532,1,2,1.000189897455374097987087[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://purl.org/dc/terms/type,,data,193877,2,193877,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,193877,2,387754,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,193877,8,193877,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#literalForm,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,193877,193691,193877,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://eurovoc.europa.eu/schema#supportedLanguage,http://eurovoc.europa.eu/schema#Language,object,1,24,24,24,24,24.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://purl.org/dc/terms/hasPart,http://eurovoc.europa.eu/schema#MicroThesaurus,object,1,127,127,127,127,127.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://purl.org/dc/terms/hasPart,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,1,127,127,127,127,127.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://purl.org/dc/terms/identifier,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Thesaurus,object,1,2,2,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,1,538,538,538,538,538.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://www.w3.org/2004/02/skos/core#Concept,object,1,538,538,538,538,538.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,1,27,27,27,27,27.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,1,27,27,27,27,27.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,7104,8,7104,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,21,2,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#isoCountryCode,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,6185,19,6697,1,16,1.645064954457219650589816[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://publications.europa.eu/ontology/euvoc#status,,data,7104,2,7104,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/elements/1.1/identifier,http://eurovoc.europa.eu,data,7104,7085,7104,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#date,data,7083,38,7083,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/isReplacedBy,http://eurovoc.europa.eu/schema#Country,object,14,4,14,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/isReplacedBy,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,89,57,91,1,2,1.043956043956043956043956[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/isReplacedBy,http://www.w3.org/2004/02/skos/core#Concept,object,89,57,91,1,2,1.043956043956043956043956[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/replaces,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,59,89,92,1,7,2.478260869565217391304348[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/replaces,http://www.w3.org/2004/02/skos/core#Concept,object,59,89,92,1,7,2.478260869565217391304348[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,7104,5,14490,2,4,2.061283643892339544513458[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,7104,8,7104,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6801,193691,193877,1,438,68.613713849502519638740026[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#Country,object,21,6,21,1,2,1.142857142857142857142857[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6527,1486,7162,1,9,1.402401563808991901703435[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broader,http://www.w3.org/2004/02/skos/core#Concept,object,6527,1486,7162,1,9,1.402401563808991901703435[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#definition,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,295,5410,5454,1,25,22.599926659332599926659333[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#historyNote,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,109,1995,2289,1,25,23.15989515072083879423329[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,7081,128,7424,1,4,2.117860991379310344827586[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#Thesaurus,object,7083,1,7083,1,4,2.045178596639841874911761[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,7104,129,14507,1,4,2.082374026332115530433584[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#notation,http://eurovoc.europa.eu,data,7104,7085,7104,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,7104,185108,191819,27,29,27.001616106850729072719595[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#Country,object,55,56,75,1,7,2.413333333333333333333333[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,4374,4374,10094,1,20,3.767188428769566078858728[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#related,http://www.w3.org/2004/02/skos/core#Concept,object,4374,4374,10094,1,20,3.767188428769566078858728[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#scopeNote,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,1350,16529,17313,1,25,19.162536822041240686189569[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#MicroThesaurus,object,559,128,560,1,3,1.966071428571428571428571[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#Thesaurus,object,538,1,538,2,3,2.001858736059479553903346[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,559,129,1098,1,3,1.983606557377049180327869[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,6801,193877,193877,1,438,68.613713849502519638740026[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,6801,193877,193877,1,438,68.613713849502519638740026[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,7104,191819,191819,27,29,27.001616106850729072719595[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,21,2,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://publications.europa.eu/ontology/euvoc#status,,data,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://purl.org/dc/elements/1.1/identifier,http://eurovoc.europa.eu,data,21,21,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,21,4,84,4,4,4.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2004/02/skos/core#notation,http://eurovoc.europa.eu,data,21,21,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,21,567,567,27,27,27.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#MicroThesaurus,object,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2004/02/skos/core#topConceptOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,21,1,21,1,1,1.0[m
[31m-http://publications.europa.eu/ontology/euvoc#DomainEurovoc,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,21,567,567,27,27,27.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,7104,8,7104,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,21,2,21,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#isoCountryCode,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,6185,19,6697,1,16,1.645064954457219650589816[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://publications.europa.eu/ontology/euvoc#status,,data,7104,2,7104,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/elements/1.1/identifier,http://eurovoc.europa.eu,data,7104,7085,7104,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#date,data,7083,38,7083,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/isReplacedBy,http://eurovoc.europa.eu/schema#Country,object,14,4,14,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/isReplacedBy,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,89,57,91,1,2,1.043956043956043956043956[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/isReplacedBy,http://www.w3.org/2004/02/skos/core#Concept,object,89,57,91,1,2,1.043956043956043956043956[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/replaces,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,59,89,92,1,7,2.478260869565217391304348[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/replaces,http://www.w3.org/2004/02/skos/core#Concept,object,59,89,92,1,7,2.478260869565217391304348[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://www.w3.org/2004/02/skos/core#Concept,object,7104,5,14490,2,4,2.061283643892339544513458[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,7104,8,7104,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6801,193691,193877,1,438,68.613713849502519638740026[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#Country,object,21,6,21,1,2,1.142857142857142857142857[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6527,1486,7162,1,9,1.402401563808991901703435[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broader,http://www.w3.org/2004/02/skos/core#Concept,object,6527,1486,7162,1,9,1.402401563808991901703435[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#definition,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,295,5410,5454,1,25,22.599926659332599926659333[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#historyNote,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,109,1995,2289,1,25,23.15989515072083879423329[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,7081,128,7424,1,4,2.117860991379310344827586[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#Thesaurus,object,7083,1,7083,1,4,2.045178596639841874911761[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,7104,129,14507,1,4,2.082374026332115530433584[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#notation,http://eurovoc.europa.eu,data,7104,7085,7104,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,7104,185108,191819,27,29,27.001616106850729072719595[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#Country,object,55,56,75,1,7,2.413333333333333333333333[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,4374,4374,10094,1,20,3.767188428769566078858728[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#related,http://www.w3.org/2004/02/skos/core#Concept,object,4374,4374,10094,1,20,3.767188428769566078858728[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#scopeNote,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,1350,16529,17313,1,25,19.162536822041240686189569[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#MicroThesaurus,object,559,128,560,1,3,1.966071428571428571428571[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#Thesaurus,object,538,1,538,2,3,2.001858736059479553903346[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,559,129,1098,1,3,1.983606557377049180327869[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,6801,193877,193877,1,438,68.613713849502519638740026[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,6801,193877,193877,1,438,68.613713849502519638740026[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,7104,191819,191819,27,29,27.001616106850729072719595[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://art.uniroma2.it/ontologies/vocbench#hasStatus,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,130,1,130,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#domain,http://eurovoc.europa.eu/schema#Domain,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#domain,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#domain,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#domain,http://www.w3.org/2004/02/skos/core#Concept,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,1,1,1,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#supportedLanguage,http://eurovoc.europa.eu/schema#Language,object,1,24,24,24,24,24.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://publications.europa.eu/ontology/euvoc#domain,http://eurovoc.europa.eu/schema#Domain,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://publications.europa.eu/ontology/euvoc#domain,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://publications.europa.eu/ontology/euvoc#domain,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://publications.europa.eu/ontology/euvoc#domain,http://www.w3.org/2004/02/skos/core#Concept,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,130,130,130,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/terms/hasPart,http://eurovoc.europa.eu/schema#MicroThesaurus,object,1,127,127,127,127,127.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/terms/hasPart,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,1,127,127,127,127,127.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/terms/identifier,http://www.w3.org/2001/XMLSchema#string,data,130,130,130,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/terms/isPartOf,http://eurovoc.europa.eu/schema#Thesaurus,object,127,1,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/terms/isPartOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,127,1,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://rdfs.org/ns/void#usedBy,,data,1,128,128,128,128,128.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,130,3,260,2,2,2.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,130,1,130,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#Domain,object,1,21,21,21,21,21.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,129,559,1098,1,538,267.591985428051001821493625[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://publications.europa.eu/ontology/euvoc#DomainEurovoc,object,1,21,21,21,21,21.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://www.w3.org/2004/02/skos/core#Concept,object,129,559,1098,1,538,267.591985428051001821493625[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,130,3460,3460,2,27,26.971098265895953757225434[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,1,29,29,29,29,29.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,130,3458,3458,1,27,26.984962406015037593984962[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,389183,8,389183,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://lexvo.org/ontology#acronymFor,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,2197,2262,2275,1,5,1.097582417582417582417582[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://lexvo.org/ontology#acronymFor,http://www.w3.org/2008/05/skos-xl#Label,object,3477,3463,3607,1,5,1.076517881896312725256446[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://lexvo.org/ontology#longFormFor,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,114,116,116,1,2,1.034482758620689655172414[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://lexvo.org/ontology#longFormFor,http://www.w3.org/2008/05/skos-xl#Label,object,156,157,158,1,2,1.02531645569620253164557[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://lexvo.org/ontology#shortFormFor,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,97,96,98,1,2,1.02040816326530612244898[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://lexvo.org/ontology#shortFormFor,http://www.w3.org/2008/05/skos-xl#Label,object,157,156,158,1,2,1.012658227848101265822785[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://publications.europa.eu/ontology/euvoc#status,,data,363097,2,363097,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#date,data,15556,173,15556,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#date,data,16741,134,16744,1,2,1.000358337314859053989489[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://purl.org/dc/terms/type,,data,389183,3,389183,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://www.w3.org/2008/05/skos-xl#Label,object,389183,2,583060,1,2,1.665032758206702569203856[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2002/07/owl#versionInfo,http://www.w3.org/2001/XMLSchema#string,data,389183,8,389183,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2008/05/skos-xl#literalForm,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,389183,381762,389183,1,1,1.0[m
[1mdiff --git a/public/RDF-fingerprint-diff/resources/fingerprint.rq_eurovoc44.log b/public/RDF-fingerprint-diff/resources/fingerprint.rq_eurovoc44.log[m
[1mdeleted file mode 100755[m
[1mindex 5a68a7a..0000000[m
[1m--- a/public/RDF-fingerprint-diff/resources/fingerprint.rq_eurovoc44.log[m
[1m+++ /dev/null[m
[36m@@ -1,203 +0,0 @@[m
[31m-stype,p,ootype,propType,scnt,ocnt,cnt,min_sp,max_sp,avg_sp[m
[31m-http://eurovoc.europa.eu/schema#CompoundEquivalence,http://eurovoc.europa.eu/schema#compoundNonPreferredTerm,http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,object,44,44,44,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundEquivalence,http://eurovoc.europa.eu/schema#compoundNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#Label,object,44,44,44,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundEquivalence,http://eurovoc.europa.eu/schema#preferredTermComponent,http://eurovoc.europa.eu/schema#PreferredTerm,object,44,44,88,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundEquivalence,http://eurovoc.europa.eu/schema#preferredTermComponent,http://www.w3.org/2008/05/skos-xl#Label,object,44,44,88,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundEquivalence,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#CompoundEquivalence,object,44,1,44,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,http://eurovoc.europa.eu/schema#termReleasedWithVersion,http://www.w3.org/2001/XMLSchema#string,data,44,1,44,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,2,1,2,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,object,44,2,88,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#literalForm,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,44,44,44,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,6,1,6,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://eurovoc.europa.eu/schema#isoCountryCode,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,240,240,240,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,6,2,6,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#dateTime,data,4,3,4,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Country,object,240,2,480,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,236,6801,6801,2,221,51.32892221732098220849875[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,221,29.3375[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,240,78,798,1,7,3.9598997493734335839599[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#broader,http://www.w3.org/2004/02/skos/core#Concept,object,240,78,798,1,7,3.9598997493734335839599[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#broaderTransitive,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,240,56,798,1,7,3.9598997493734335839599[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#broaderTransitive,http://www.w3.org/2004/02/skos/core#Concept,object,240,56,798,1,7,3.9598997493734335839599[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#definition,,data,4,88,88,22,22,22.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#historyNote,,data,7,153,153,21,22,21.86274509803921568627451[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,240,7,568,2,4,3.517605633802816901408451[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#Thesaurus,object,240,1,240,2,4,3.366666666666666666666667[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,240,8,808,2,4,3.472772277227722772277228[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,240,5746,5747,23,24,23.947972855402818862014964[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#Country,object,5,1,5,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,37,38,43,1,3,1.372093023255813953488372[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#related,http://www.w3.org/2004/02/skos/core#Concept,object,42,39,48,1,3,1.333333333333333333333333[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2004/02/skos/core#scopeNote,,data,17,98,98,1,18,15.224489795918367346938776[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,236,6801,6801,1,220,50.32892221732098220849875[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,236,6801,6801,1,220,50.32892221732098220849875[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#prefLabel,http://eurovoc.europa.eu/schema#PreferredTerm,object,240,5760,5760,24,24,24.0[m
[31m-http://eurovoc.europa.eu/schema#Country,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,240,5760,5760,24,24,24.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,21,2,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,21,21,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Domain,object,21,1,21,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Domain,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,21,504,504,24,24,24.0[m
[31m-http://eurovoc.europa.eu/schema#EquivalenceRelationship,http://eurovoc.europa.eu/schema#UF,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,76012,164201,164201,1,29,3.616829373755336447402878[m
[31m-http://eurovoc.europa.eu/schema#EquivalenceRelationship,http://eurovoc.europa.eu/schema#UF,http://www.w3.org/2008/05/skos-xl#Label,object,76012,164201,164201,1,29,3.616829373755336447402878[m
[31m-http://eurovoc.europa.eu/schema#EquivalenceRelationship,http://eurovoc.europa.eu/schema#USE,http://eurovoc.europa.eu/schema#PreferredTerm,object,76012,76012,76012,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#EquivalenceRelationship,http://eurovoc.europa.eu/schema#USE,http://www.w3.org/2008/05/skos-xl#Label,object,76012,76012,76012,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#EquivalenceRelationship,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#EquivalenceRelationship,object,76012,1,76012,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Export,http://eurovoc.europa.eu/schema#exportDate,http://www.w3.org/2001/XMLSchema#dateTime,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Export,http://eurovoc.europa.eu/schema#exportVersion,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Export,http://eurovoc.europa.eu/schema#exportedThesaurus,http://eurovoc.europa.eu/schema#Thesaurus,object,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Export,http://eurovoc.europa.eu/schema#exportedThesaurus,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Export,http://eurovoc.europa.eu/schema#intermediateRelease,http://www.w3.org/2001/XMLSchema#boolean,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Export,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Export,object,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Language,http://eurovoc.europa.eu/schema#language,http://www.w3.org/2001/XMLSchema#string,data,24,24,24,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Language,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Language,object,24,1,24,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Language,http://www.w3.org/2000/01/rdf-schema#label,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,24,1056,1056,44,44,44.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#domain,http://eurovoc.europa.eu/schema#Domain,object,127,21,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,1,1,1,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,126,2,126,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,127,127,127,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#MicroThesaurus,object,127,2,254,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,127,532,532,1,31,7.041353383458646616541353[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://www.w3.org/2004/02/skos/core#Concept,object,127,532,532,1,31,7.041353383458646616541353[m
[31m-http://eurovoc.europa.eu/schema#MicroThesaurus,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,127,3048,3048,24,24,24.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#acronym,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,1079,1114,1114,1,3,1.064631956912028725314183[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#acronym,http://www.w3.org/2008/05/skos-xl#Label,object,1079,1114,1114,1,3,1.064631956912028725314183[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#fullName,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,239,262,262,1,2,1.175572519083969465648855[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#fullName,http://www.w3.org/2008/05/skos-xl#Label,object,239,262,262,1,2,1.175572519083969465648855[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#shortName,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,60,60,60,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#shortName,http://www.w3.org/2008/05/skos-xl#Label,object,60,60,60,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#termReleasedWithVersion,http://www.w3.org/2001/XMLSchema#string,data,165191,7,165191,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,5331,2,5331,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#translationOf,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,12,87,87,1,17,11.804597701149425287356322[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://eurovoc.europa.eu/schema#translationOf,http://www.w3.org/2008/05/skos-xl#Label,object,12,87,87,1,17,11.804597701149425287356322[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,12,9,12,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#dateTime,data,11,4,11,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#PreferredTerm,object,165191,2,330382,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://www.w3.org/2008/05/skos-xl#labelRelation,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,1329,1457,1523,1,18,1.873276428102429415627052[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://www.w3.org/2008/05/skos-xl#labelRelation,http://www.w3.org/2008/05/skos-xl#Label,object,1329,1457,1523,1,18,1.873276428102429415627052[m
[31m-http://eurovoc.europa.eu/schema#PreferredTerm,http://www.w3.org/2008/05/skos-xl#literalForm,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,165093,159856,165093,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#acronym,http://eurovoc.europa.eu/schema#PreferredTerm,object,221,199,221,1,2,1.009049773755656108597285[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#acronym,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,2030,2006,2040,1,2,1.010784313725490196078431[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#acronym,http://www.w3.org/2008/05/skos-xl#Label,object,2249,2205,2261,1,2,1.010614772224679345422379[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#fullName,http://eurovoc.europa.eu/schema#PreferredTerm,object,1174,1107,1174,1,3,1.066439522998296422487223[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#fullName,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,2063,2066,2097,1,5,1.075345731998092513113972[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#fullName,http://www.w3.org/2008/05/skos-xl#Label,object,3161,3173,3271,1,5,1.072149189850198715988994[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#shortName,http://eurovoc.europa.eu/schema#PreferredTerm,object,41,40,41,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#shortName,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,55,57,57,1,2,1.070175438596491228070175[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#shortName,http://www.w3.org/2008/05/skos-xl#Label,object,96,97,98,1,2,1.040816326530612244897959[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#termReleasedWithVersion,http://www.w3.org/2001/XMLSchema#string,data,164201,7,164201,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#translationOf,http://eurovoc.europa.eu/schema#PreferredTerm,object,5,1,5,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#translationOf,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,12,55,56,1,14,9.5[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://eurovoc.europa.eu/schema#translationOf,http://www.w3.org/2008/05/skos-xl#Label,object,17,56,61,1,14,8.803278688524590163934426[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,4,4,4,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,164201,2,328402,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2004/02/skos/core#definition,,data,87,87,87,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2004/02/skos/core#historyNote,,data,4,4,4,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2004/02/skos/core#scopeNote,,data,75,75,75,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#labelRelation,http://eurovoc.europa.eu/schema#PreferredTerm,object,1437,1329,1441,1,3,1.074253990284524635669674[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#labelRelation,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,4124,4160,4250,1,15,1.197411764705882352941176[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#labelRelation,http://www.w3.org/2008/05/skos-xl#Label,object,5464,5489,5691,1,15,1.166227376559479880513091[m
[31m-http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,http://www.w3.org/2008/05/skos-xl#literalForm,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,164201,164128,164201,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://eurovoc.europa.eu/schema#supportedLanguage,http://eurovoc.europa.eu/schema#Language,object,1,24,24,24,24,24.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#Thesaurus,object,1,2,2,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,1,24,24,25,25,25.0[m
[31m-http://eurovoc.europa.eu/schema#Thesaurus,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,25,25,25.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,219,1,219,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#useInstead,http://eurovoc.europa.eu/schema#Country,object,3,1,3,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#useInstead,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,22,20,23,1,2,1.086956521739130434782609[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://eurovoc.europa.eu/schema#useInstead,http://www.w3.org/2004/02/skos/core#Concept,object,25,21,26,1,2,1.076923076923076923076923[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,6643,6643,6643,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,198,56,198,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#dateTime,data,151,26,151,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6643,2,13286,2,2,2.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6315,157372,157484,1,378,62.331957532193746666328008[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#Country,object,10,3,10,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6101,1388,6114,1,2,1.00425253516519463526333[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broader,http://www.w3.org/2004/02/skos/core#Concept,object,6111,1391,6124,1,2,1.004245591116917047681254[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broaderTransitive,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6111,480,6156,1,5,1.025341130604288499025341[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#broaderTransitive,http://www.w3.org/2004/02/skos/core#Concept,object,6111,480,6156,1,5,1.025341130604288499025341[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#definition,,data,252,3467,3467,1,23,17.106143640034612056533026[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#historyNote,,data,64,1158,1158,1,23,22.217616580310880829015544[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,6643,127,6666,2,4,2.007500750075007500750075[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#Thesaurus,object,6643,1,6643,2,4,2.003462291133524010236339[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,6643,128,13309,2,4,2.005485010143511909234353[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6643,154108,154113,22,24,23.2062253022133110120496[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#Country,object,10,7,11,1,3,1.454545454545454545454545[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,2567,2759,4845,1,15,2.963054695562435500515996[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#related,http://www.w3.org/2004/02/skos/core#Concept,object,2575,2766,4856,1,15,2.959637561779242174629325[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#scopeNote,,data,1380,17009,17009,1,23,18.32035980951261097066259[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#MicroThesaurus,object,532,127,532,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,532,127,532,1,1,1.0[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,object,2,44,88,117,138,127.5[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,6315,157400,157400,1,378,62.301435832274459974587039[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,6315,157444,157488,1,378,62.337867012089810017271157[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#prefLabel,http://eurovoc.europa.eu/schema#PreferredTerm,object,6643,159431,159431,23,24,23.999855736964580288651517[m
[31m-http://eurovoc.europa.eu/schema#ThesaurusConcept,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,6643,159431,159431,23,24,23.999855736964580288651517[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#approvedForRelease,http://www.w3.org/2001/XMLSchema#string,data,225,1,225,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#isoCountryCode,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#useInstead,http://eurovoc.europa.eu/schema#Country,object,3,1,3,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#useInstead,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,22,20,23,1,2,1.086956521739130434782609[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://eurovoc.europa.eu/schema#useInstead,http://www.w3.org/2004/02/skos/core#Concept,object,25,21,26,1,2,1.076923076923076923076923[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,6883,6883,6883,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,204,58,204,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#dateTime,data,155,29,155,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://www.w3.org/2004/02/skos/core#Concept,object,6883,3,13766,2,2,2.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6551,164172,164285,1,378,61.876458593298231731442311[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#altLabel,http://www.w3.org/2001/XMLSchema#string,data,240,239,240,1,221,29.3375[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#Country,object,10,3,10,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broader,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6341,1449,6912,1,7,1.345486111111111111111111[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broader,http://www.w3.org/2004/02/skos/core#Concept,object,6351,1452,6922,1,7,1.344986997977463160936146[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broaderTransitive,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,6351,512,6954,1,7,1.362093758987633016968651[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#broaderTransitive,http://www.w3.org/2004/02/skos/core#Concept,object,6351,512,6954,1,7,1.362093758987633016968651[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#definition,,data,256,3555,3555,1,23,17.227285513361462728551336[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#historyNote,,data,71,1311,1311,1,23,22.176201372997711670480549[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#MicroThesaurus,object,6883,127,7234,2,4,2.126071329831351949129113[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#inScheme,http://eurovoc.europa.eu/schema#Thesaurus,object,6883,1,6883,2,4,2.050995205578962661630103[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#inScheme,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,6883,128,14117,2,4,2.089466600552525324077354[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,6883,159854,159860,22,24,23.232891279869886150381584[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#Country,object,15,7,16,1,3,1.3125[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#related,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,2604,2789,4888,1,15,2.949058919803600654664484[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#related,http://www.w3.org/2004/02/skos/core#Concept,object,2617,2796,4904,1,15,2.943719412724306688417618[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#scopeNote,,data,1397,17107,17107,1,23,18.302624656573332553925294[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://eurovoc.europa.eu/schema#MicroThesaurus,object,532,127,532,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2004/02/skos/core#topConceptOf,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,532,127,532,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#CompoundNonPreferredTerm,object,2,44,88,117,138,127.5[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#altLabel,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,6551,164201,164201,1,378,61.805549296289303962826049[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#altLabel,http://www.w3.org/2008/05/skos-xl#Label,object,6551,164245,164289,1,378,61.840737967849338665400605[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#prefLabel,http://eurovoc.europa.eu/schema#PreferredTerm,object,6883,165191,165191,23,24,23.999860767233081705419787[m
[31m-http://www.w3.org/2004/02/skos/core#Concept,http://www.w3.org/2008/05/skos-xl#prefLabel,http://www.w3.org/2008/05/skos-xl#Label,object,6883,165191,165191,23,24,23.999860767233081705419787[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#domain,http://eurovoc.europa.eu/schema#Domain,object,127,21,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#hasPolyHierarchy,http://www.w3.org/2001/XMLSchema#boolean,data,1,1,1,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#supportedLanguage,http://eurovoc.europa.eu/schema#Language,object,1,24,24,24,24,24.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,126,2,126,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://purl.org/dc/elements/1.1/identifier,http://www.w3.org/2001/XMLSchema#string,data,127,127,127,1,1,1.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://www.w3.org/2004/02/skos/core#ConceptScheme,object,128,3,256,2,2,2.0[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://eurovoc.europa.eu/schema#ThesaurusConcept,object,127,532,532,1,31,7.041353383458646616541353[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#hasTopConcept,http://www.w3.org/2004/02/skos/core#Concept,object,127,532,532,1,31,7.041353383458646616541353[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,128,3072,3072,24,25,24.0078125[m
[31m-http://www.w3.org/2004/02/skos/core#ConceptScheme,http://www.w3.org/2004/02/skos/core#prefLabel,http://www.w3.org/2001/XMLSchema#string,data,1,1,1,25,25,25.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#acronym,http://eurovoc.europa.eu/schema#PreferredTerm,object,221,199,221,1,2,1.009049773755656108597285[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#acronym,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,3109,3045,3154,1,3,1.029803424223208623969562[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#acronym,http://www.w3.org/2008/05/skos-xl#Label,object,3328,3244,3375,1,3,1.028444444444444444444444[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#fullName,http://eurovoc.europa.eu/schema#PreferredTerm,object,1174,1107,1174,1,3,1.066439522998296422487223[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#fullName,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,2302,2312,2359,1,5,1.086477320898685883849089[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#fullName,http://www.w3.org/2008/05/skos-xl#Label,object,3400,3419,3533,1,5,1.079818850834984432493631[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#shortName,http://eurovoc.europa.eu/schema#PreferredTerm,object,41,40,41,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#shortName,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,115,117,117,1,2,1.034188034188034188034188[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#shortName,http://www.w3.org/2008/05/skos-xl#Label,object,156,157,158,1,2,1.02531645569620253164557[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#termReleasedWithVersion,http://www.w3.org/2001/XMLSchema#string,data,329436,7,329436,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#toBeTranslated,http://www.w3.org/2001/XMLSchema#string,data,5331,2,5331,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#translationOf,http://eurovoc.europa.eu/schema#PreferredTerm,object,5,1,5,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#translationOf,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,24,142,143,1,17,10.902097902097902097902098[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://eurovoc.europa.eu/schema#translationOf,http://www.w3.org/2008/05/skos-xl#Label,object,29,143,148,1,17,10.567567567567567567567568[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://purl.org/dc/terms/created,http://www.w3.org/2001/XMLSchema#dateTime,data,18,11,18,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://purl.org/dc/terms/modified,http://www.w3.org/2001/XMLSchema#dateTime,data,11,4,11,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/1999/02/22-rdf-syntax-ns#type,http://www.w3.org/2008/05/skos-xl#Label,object,329436,4,658872,2,2,2.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2004/02/skos/core#definition,,data,87,87,87,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2004/02/skos/core#historyNote,,data,4,4,4,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2004/02/skos/core#scopeNote,,data,75,75,75,1,1,1.0[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2008/05/skos-xl#labelRelation,http://eurovoc.europa.eu/schema#PreferredTerm,object,1437,1329,1441,1,3,1.074253990284524635669674[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2008/05/skos-xl#labelRelation,http://eurovoc.europa.eu/schema#SimpleNonPreferredTerm,object,5453,5515,5773,1,18,1.37571453317166118136151[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2008/05/skos-xl#labelRelation,http://www.w3.org/2008/05/skos-xl#Label,object,6793,6844,7214,1,18,1.31549764347102855558636[m
[31m-http://www.w3.org/2008/05/skos-xl#Label,http://www.w3.org/2008/05/skos-xl#literalForm,http://www.w3.org/1999/02/22-rdf-syntax-ns#langString,data,329338,324022,329338,1,1,1.0[m
[1mdiff --git a/server/main.js b/server/main.js[m
[1mindex 9d5acd5..ff2047b 100755[m
[1m--- a/server/main.js[m
[1m+++ b/server/main.js[m
[36m@@ -1,5 +1,5 @@[m
 import { Meteor } from 'meteor/meteor';[m
[31m-import "/imports/mdg/validatedMethods";[m
[32m+[m[32mimport "../imports/mdg/validatedMethods";[m
 [m
 Meteor.startup(() => {[m
 [m
[1mdiff --git a/server/publish.js b/server/publish.js[m
[1mindex 6f66329..16a31c3 100755[m
[1m--- a/server/publish.js[m
[1m+++ b/server/publish.js[m
[36m@@ -1,5 +1,4 @@[m
[31m-import { Csvs, GeneratedFile } from '/imports/collections/fileCollection';[m
[31m-import { FingerprinterProgress } from '/imports/collections/reportSchemas';[m
[32m+[m[32mimport { Csvs, GeneratedFile } from '../imports/collections/fileCollection';[m
 [m
 Meteor.publish('files.csvs.all', function () {[m
 	return Csvs.find().cursor;[m
[36m@@ -8,7 +7,3 @@[m [mMeteor.publish('files.csvs.all', function () {[m
 Meteor.publish('generatedfile', function () {[m
 	return GeneratedFile.find().cursor;[m
 });[m
[31m-[m
[31m-Meteor.publish('fingerprinterProgress', function () {[m
[31m-	return FingerprinterProgress.find();[m
[31m-});[m
[1mdiff --git a/server/security.js b/server/security.js[m
[1mindex 05ab735..58507fa 100755[m
[1m--- a/server/security.js[m
[1m+++ b/server/security.js[m
[36m@@ -1,7 +1,6 @@[m
[31m-import { Csvs } from "/imports/collections/fileCollection";[m
[31m-import { FingerprinterProgress } from "/imports/collections/reportSchemas";[m
[32m+[m[32mimport {Csvs} from "../imports/collections/fileCollection";[m
 [m
[31m-let allow = {[m
[32m+[m[32mCsvs.allow({[m
     insert: () => {[m
         return true;[m
     },[m
[36m@@ -11,7 +10,4 @@[m [mlet allow = {[m
     remove: () => {[m
         return true;[m
     },[m
[31m-};[m
[31m-[m
[31m-Csvs.allow(allow);[m
[31m-FingerprinterProgress.allow(allow);[m
[32m+[m[32m});[m
\ No newline at end of file[m
