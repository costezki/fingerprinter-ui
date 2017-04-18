import {Template} from 'meteor/templating';

import "./Footer.html";

Template.Footer.helpers({
    year() {
        return new Date().getFullYear();
    }
});
