import {Meteor} from 'meteor/meteor';

import "./layouts/layouts";
import "./partials/partials";
import "./collections/fileCollection";
import "./collections/form-settings";

BlazeLayout.setRoot('body');

FlowRouter.route('/', {
    name: 'home',
    action() {
        BlazeLayout.render("MainLayout", {main:'Home'});
    }
});

FlowRouter.route('/stats', {
    name: 'stats',
    action() {
        BlazeLayout.render("MainLayout", {main:'Stats'});
    }
});

FlowRouter.route('/diff', {
    name: 'diff',
    action() {
        BlazeLayout.render("MainLayout", {main:'Diff'});
    }
});
