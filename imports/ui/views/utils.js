import { Csvs } from '../../collections/fileCollection';

export function uploadFile(e, template, sessionVariable) {
    console.log(e.currentTarget.files);
    if (e.currentTarget.files && e.currentTarget.files[0]) {
        var upload = Csvs.insert({
            file: e.currentTarget.files[0],
            streams: 'dynamic',
            chunkSize: 'dynamic'
        }, false);

        upload.on('start', () => {
            template.currentUpload.set(this);
        });

        upload.on('end', (error, fileObj) => {
            if (error) {
                console.error('Error during upload: ' + error);
            } else {
                console.log('File "' + fileObj.name + '" successfully uploaded');
                Session.set(sessionVariable, fileObj.path);
                //template.filePath.set(fileObj.path);
            }
            template.currentUpload.set(false);
        });
        upload.start();
    }
}

function serverIdle()
{

}

function serverWorking()
{

}
