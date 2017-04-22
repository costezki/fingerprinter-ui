import { Csvs } from '../../collections/fileCollection';
/**
* Select all .alert .close buttons and setting them to hide their parent (i.e. the info/error bubble)
* rather than removing the info/error bubble from the DOM.
*/
export function alert() {
    $('.alert .close').on('click', function (e) {
        $(this).parent().hide();
    });
}

/**
* eneble or disable all elements of a form
* @param form
* @param enabled
*/
function enableForm(form, enabled) {
    let receivedForm = $(form).find('input[type="text"]');

    for (let d = 0; d < receivedForm.length; d++) {
        if (receivedForm[d].name !== "") {
            receivedForm[d].disabled = enabled;
        }
    }
}

/**
* Get data inputs: title, author, description and file
* Create formData object by name stats or diff
*/
export function generateFormData(form, formData, formName) {
    enableForm(form, true);

    $('.progress-bar').text('0%');
    $('.progress-bar').width('0%');
    $('#error-bubble').hide();
    $('#info-bubble').hide();

    if (form["alpha-file"].files && form["alpha-file"].files[0]) {
        // We upload only one file, in case
        // multiple files were selected
        let alpha = Csvs.insert({
            file: form["alpha-file"].files[0],
            streams: 'dynamic',
            chunkSize: 'dynamic'
        }, false);

        // Array for file id
        let fileId = [];

        alpha.on('end', function (error, fileObj) {
            if (error) {
                console.log('Error during upload: ' + error);
            } else {
                fileId.push(fileObj._id);

                if (formName == "diff") {
                    let beta = Csvs.insert({
                        file: form["beta-file"].files[0],
                        streams: 'dynamic',
                        chunkSize: 'dynamic'
                    }, false);

                    beta.on('end', function (error, fileObj) {
                        if (error) {
                            console.log('Error during upload: ' + error);
                        } else {
                            fileId.push(fileObj._id);
                            fileId = JSON.stringify(fileId);

                            meteorCall({ formName, fileId,  formData });
                        }
                    });

                    beta.start();
                } else {
                    fileId = JSON.stringify(fileId);

                    meteorCall({ formName, fileId,  formData });
                }
            }
        });

        alpha.start();
    }

    // assume that the the server response will not come sooner than 800 mx and
    // speculate a small progress on the progress bar
    $('.progress-bar').delay(800).text('15%');
    $('.progress-bar').delay(800).width('15%');
}

// function insertAlphaFile() {
//
// }
//
// function insertBetaFile() {
//
// }

function meteorCall(object) {
    Meteor.call("generateJSON", object, function(error) {
        if(error) {
            console.log("Error:" + error);
            enableForm(form, true);
            $('#error-bubble').show();
            $('#info-bubble').hide();
            return false;
        }

        $('.progress-bar').text('100%');
        $('.progress-bar').width('100%');

        $('#info-bubble').show();
        $('#error-bubble').hide();

        setTimeout(function () {
            $('.progress-bar').text("0%");
            $('.progress-bar').width("0%");

            enableForm(form, false);
        }, 20000); // wait for 20 seconds before resenting the progress bar to zero
    });
}

// Set in text input file name and size (not important function)
export function setFileDescription(event) {
    let uploadFile = event.target;
    let fileName = uploadFile.files[0].name;
    let fileSize = uploadFile.files[0].size / 1000000;

    if (fileSize < 1) {
        if (fileSize.toFixed(3) < 0.800) {
            if ((fileSize * 1000).toFixed(3) < 1) {
                fileSize = (fileSize * 1000000) + "bytes";
            } else {
                fileSize = (fileSize * 1000).toFixed(1) + "kb";
            }
        }
    } else {
        fileSize = fileSize.toFixed(1) + "mb";
    }

    $(uploadFile.parentNode).find(".bootstrap-filestyle input").val(fileName + " (" + fileSize + ")");
}
