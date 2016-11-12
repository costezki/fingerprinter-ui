$('.upload-btn').on('click', function () {
    console.log("click");
    $('#upload-input').click();
    $('.progress-bar').text('0%');
    $('.progress-bar').width('0%');
});

$('#upload-input').on('change', function () {

    var files = $(this).get(0).files;

    if (files.length > 0) {
        // create a FormData object which will be sent as the data payload in the
        // AJAX request
        var formData = new FormData();

        // loop through all the selected files and add them to the formData object
        for (var i = 0; i < files.length; i++) {
            var file = files[i];

            // add the files to formData object for the data payload
            formData.append('uploads[]', file, file.name);
        }

        $.ajax({
            url: '/upload',
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            success: function (data) {
                console.log('upload successful!\n' + data);
            },
            xhr: function () {
                // create an XMLHttpRequest
                var xhr = new XMLHttpRequest();

                // listen to the 'progress' event
                xhr.upload.addEventListener('progress', function (evt) {
                    if (evt.lengthComputable) {
                        // calculate the percentage of upload completed
                        var percentComplete = evt.loaded / evt.total;
                        percentComplete = parseInt(percentComplete * 100);

                        // update the Bootstrap progress bar with the new percentage
                        $('.progress-bar').text(percentComplete + '%');
                        $('.progress-bar').width(percentComplete + '%');

                        // once the upload reaches 100%, set the progress bar text to done
                        if (percentComplete === 100) {
                            $('.progress-bar').html('Done');
                        }
                    }
                }, false);
                return xhr;
            }
        });
    }
});

/**
 * Get data inputs: title, author, description and file
 * Create object by name stats
 */

$('#generate').on('click', function () {
    console.log("click");
    $('.progress-bar').text('0%');
    $('.progress-bar').width('0%');

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
        dataType: 'json', // expecting JSON to be returned
        processData: false,
        contentType: false,
        timeout: 30000,
        success: function (result) {
            console.log(result);
            // if(result.status == 200){
            //     console.log("Data successfully received, running transformation tool now.");
            // }
            $('.progress-bar').text('100%');
            $('.progress-bar').width('100%');
            $('#report-link').attr('href', result['responseText']);
        },
        error: function (result) {
            console.log(result);
        }
    });

});
