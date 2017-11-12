import "./Footer.html";

Template.Footer.helpers({
    year() {
        return new Date().getFullYear();
    },
    version(){
        return Meteor.settings.public.version || "unk";
    }
});
