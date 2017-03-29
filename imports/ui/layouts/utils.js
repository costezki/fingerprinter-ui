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
export function generateFormData(form, formData, fileId, formName) {
    enableForm(form, true);

    $('.progress-bar').text('0%');
    $('.progress-bar').width('0%');
    $('#error-bubble').hide();
    $('#info-bubble').hide();

    Meteor.call("create-json-and-call-python", formName, fileId, formData, function(error, result) {
        if(error) {
            console.log("Error:" + error);
            enableForm(form, true);
            $('#error-bubble').show();
            $('#info-bubble').hide();
            return false;
        }

        console.log("Success");
        $('.progress-bar').text('100%');
        $('.progress-bar').width('100%');

        $('#report-link').attr('href', result);
        $('#info-bubble').show();
        $('#error-bubble').hide();

        setTimeout(function () {
            $('.progress-bar').text("0%");
            $('.progress-bar').width("0%");

            enableForm(form, false);
        }, 20000); // wait for 20 seconds before resenting the progress bar to zero
    });

    // assume that the the server response will not come sooner than 800 mx and
    // speculate a small progress on the progress bar
    $('.progress-bar').delay(800).text('15%');
    $('.progress-bar').delay(800).width('15%');
}
