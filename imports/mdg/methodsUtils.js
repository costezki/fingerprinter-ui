let Fiber = Npm.require('fibers');
let Future = Npm.require("fibers/future");
let exec = Npm.require('child_process').exec;

// Call bash script to create new file in "~/temp/reports" folder
// It's will be PDF file, generated with Python script
export function callBashScript(json, formName, callback) {
    // Future - can call bash script
    var future = new Future();

    // Fiber - async calling bash script
    Fiber(function() {
        // Bash command
        let command = "";
        if (formName == "diff") {
            command = 'fingerprint diff ' + json;
        } else {
            command = 'fingerprint stats '  + json;
        }

        // Create bash script with command and call them
        exec(command, function(error, stdout, stderr) {
            if(error) {
                console.log(error);
                console.log(stderr);
                throw new Meteor.Error(500, command + " failed");
            }
            future.return(stdout.toString());
        });
        // Waiting for ending script working
        future.wait();

        // When file was created, will be call collection writer
        callback();
    }).run();
}
