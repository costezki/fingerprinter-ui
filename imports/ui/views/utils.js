import { Csvs } from '/imports/collections/fileCollection';

export function updateProgress(progressId, step) {
    Meteor.call('updateFingerPrinterProgress', { progressId, step }, (err) => {
        if (err) console.error(err);
    });
}

export function uploadFiles(file, template, callback) {
    if (file && file[0]) {
        var upload = Csvs.insert({
            file: file[0],
            streams: 'dynamic',
            chunkSize: 'dynamic'
        }, false);

        upload.on('start', () => {
            // template.currentUpload.set(this);
        });

        upload.start();

        return upload.on('end', (err, fileObj) => {
            if (err) {
                console.error('Error during upload: ' + err);
            } else {
                // console.log('File "' + fileObj.name + '" successfully uploaded');
                //template.filePath.set(fileObj.path);
                callback(fileObj.path);
            }
            // template.currentUpload.set(false);
        });
    }
}

export function setFileDescription(event, form) {
    let uploadFile = event.target;
    let fileName = uploadFile.files[0].name;
    let fileSize = uploadFile.files[0].size / 1000000;

    if (fileSize < 1) {
        if (fileSize.toFixed(3) < 0.800) {
            if ((fileSize * 1000).toFixed(3) < 1) {
                fileSize = (fileSize * 1000000) + ' B';
            } else {
                fileSize = (fileSize * 1000).toFixed(1) + ' KB';
            }
        }
    } else {
        fileSize = fileSize.toFixed(1) + " MB";
    }

    if (form == 'diff') {
        $(uploadFile.parentNode.parentNode).find('.bootstrap-filestyle-beta input').val(fileName + ' (' + fileSize + ')');
    } else {
        $(uploadFile.parentNode.parentNode).find('.bootstrap-filestyle-alpha input').val(fileName + ' (' + fileSize + ')');
    }
}
