/**
 * Select all .alert .close buttons and setting them to hide their parent (i.e. the info/error bubble)
 * rather than removing the info/error bubble from the DOM.
 */
$('.alert .close').on('click', function (e) {
    $(this).parent().hide();
});

/**
 * eneble or disable all elements of a form
 * @param form
 * @param enabled
 */
function enableForm(form, enabled) {
    var receivedForm = $("#" + form).find('input[type="text"]');

    for (var d = 0; d < receivedForm.length; d++) {
        if (receivedForm[d].name != "") {
            receivedForm[d].disabled = enabled;
        }
    }
}

/**
 * Get data inputs: title, author, description and file
 * Create object by name stats
 */

$('#generate-stats').on('click', function () {
    enableForm("stats-form", true);

    $('.progress-bar').text('0%');
    $('.progress-bar').width('0%');
    $('#error-bubble').hide();
    $('#info-bubble').hide();

    //select all possible files
    var selectedFile = $("#stats-alpha").get(0).files;

    // create a FormData object which will be sent as the data payload in the
    // AJAX request
    var formData = new FormData();

    if (selectedFile.length > 0) {
        // One or more files selected, process the file upload
        // loop through all the selected files
        for (var i = 0; i < selectedFile.length; i++) {
            var file = selectedFile[i];
            // add the files to formData object for the data payload
            formData.append('alpha', file, file.name);
        }
    }

    // Append inputs to formData
    formData.append("title", $("#stats-title").val());
    formData.append("author", $("#stats-author").val());
    formData.append("description", $("#stats-description").val());

    formData.append("alpha-title", $("#stats-alpha-title").val());
    formData.append("alpha-description", $("#stats-alpha-description").val());

    // Send formData to the server
    $.ajax({
        url: "/stats-upload",
        type: "POST",
        data: formData,
        dataType: 'text', // expecting text to be returned
        processData: false,
        contentType: false,
        timeout: 60000,
        success: function (result) {
            console.log("Success");
            $('.progress-bar').text('100%');
            $('.progress-bar').width('100%');

            $('#report-link').attr('href', result);
            $('#info-bubble').show();
            $('#error-bubble').hide();


            setTimeout(function () {
                $('.progress-bar').text("0%");
                $('.progress-bar').width("0%");

                enableForm("stats-form", false);
            }, 20000); // wait for 20 seconds before resenting the progress bar to zero
        },
        error: function (result) {
            console.log("Error:" + result);
            enableForm("#stats-form", true);
            $('#error-bubble').show();
            $('#info-bubble').hide();
        }
    });

    //assume that the the server response will not come sooner than 800 mx and
    // speculate a small progress on the progress bar
    $('.progress-bar').delay(800).text('15%');
    $('.progress-bar').delay(800).width('15%');
});

$('#generate-diff').on('click', function () {
    enableForm("diff-form", true);

    $('.progress-bar').text('0%');
    $('.progress-bar').width('0%');
    $('#error-bubble').hide();
    $('#info-bubble').hide();

    //select all possible files
    var selectedAlphaFile = $("#diff-alpha").get(0).files;
    var selectedBetaFile = $("#diff-beta").get(0).files;

    // create a FormData object which will be sent as the data payload in the
    // AJAX request
    var formData = new FormData();

    if (selectedAlphaFile.length > 0) {
        // One or more files selected, process the file upload
        // loop through all the selected files
        for (var i = 0; i < selectedAlphaFile.length; i++) {
            // add the files to formData object for the data payload
            formData.append('alpha', selectedAlphaFile[i], selectedAlphaFile[i].name);
        }
    }

    if (selectedBetaFile.length > 0) {
        // One or more files selected, process the file upload
        // loop through all the selected files
        for (var s = 0; s < selectedBetaFile.length; s++) {
            // add the files to formData object for the data payload
            formData.append('beta', selectedBetaFile[s], selectedBetaFile[s].name);
        }
    }

    // Append inputs to formData
    formData.append("title", $("#diff-title").val());
    formData.append("author", $("#diff-author").val());
    formData.append("description", $("#diff-description").val());

    formData.append("alpha-title", $("#diff-alpha-title").val());
    formData.append("alpha-description", $("#diff-alpha-description").val());

    formData.append("beta-title", $("#diff-beta-title").val());
    formData.append("beta-description", $("#diff-beta-description").val());

    // Send formData to the server
    $.ajax({
        url: "/diff-upload",
        type: "POST",
        data: formData,
        dataType: 'text', // expecting text to be returned
        processData: false,
        contentType: false,
        timeout: 60000,
        success: function (result) {
            console.log("Success");
            $('.progress-bar').text('100%');
            $('.progress-bar').width('100%');

            $('#report-link').attr('href', result);
            $('#info-bubble').show();
            $('#error-bubble').hide();


            setTimeout(function () {
                $('.progress-bar').text("0%");
                $('.progress-bar').width("0%");

                enableForm("diff-form", false);
            }, 20000); // wait for 20 seconds before resenting the progress bar to zero
        },
        error: function (result) {
            console.log("Error:" + result);
            enableForm("#stats-form", true);
            $('#error-bubble').show();
            $('#info-bubble').hide();
        }
    });

    //assume that the the server response will not come sooner than 800 mx and
    // speculate a small progress on the progress bar
    $('.progress-bar').delay(800).text('15%');
    $('.progress-bar').delay(800).width('15%');

});