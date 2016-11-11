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

$('#generate').on('click', function () {
    console.log("click");
    $('.progress-bar').text('10%');
    $('.progress-bar').width('50%');

    /**
     * Get data inputs: title, author, description and file
     * Create object by name stats
     */
    var selectedFile = $("#filestyle-0").get(0).files;

    if (selectedFile.length > 0) {
        // One or more files selected, process the file upload

        // create a FormData object which will be sent as the data payload in the
        // AJAX request
        var formData = new FormData();

        // loop through all the selected files
        for (var i = 0; i < selectedFile.length; i++) {
            var file = selectedFile[i];

            // add the files to formData object for the data payload
            formData.append('uploads[]', file, file.name);
        }

    }
    // Append inputs to formData
    formData.append("title", $("#stats-title").val());
    formData.append("author", $("#stats-author").val());
    formData.append("description", $("#stats-description").val());

    // Show data file, type object
    console.log(document.getElementById("filestyle-0").value);

    // var stats = {
    //     title: $("#stats-title").val(),
    //     author: $("#stats-author").val(),
    //     description: $("#stats-description").val(),
    //     "file-data": {
    //         name: selectedFile.name,
    //         size: selectedFile.size + " bytes",
    //         type: selectedFile.type
    //     }
    // };

    // Send on server formData
    $.ajax({
        url: "/stats-upload",
        type: "POST",
        data: formData,
        processData: false,
        contentType: false,
        success: function (data) {
            console.log("Success!");
        }
    });

    // fs.appendFile("/uploads/test.json", stats, function (err) {
    //     console.log(err)
    // });

    //console.log($('#config[title]').val());
});
