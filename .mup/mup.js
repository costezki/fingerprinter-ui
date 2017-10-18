module.exports = {
    servers: {
        one: {
            host: 'ec2-52-57-10-109.eu-central-1.compute.amazonaws.com',
            username: 'ubuntu',
            pem: '/home/lps/work/commonInstance/CommonInstance.pem',
            // password:
            // or leave blank for authenticate from ssh-agent
        }
    },

    meteor: {
        name: 'fingerprinter',
        path: '../',
        volumes: { // lets you add docker volumes (optional)
            "/opt/resources/fingerprinter-ui/reports": "/reports", // passed as '-v /host/path:/container/path' to the docker run command
            "/opt/resources/fingerprinter-ui/uploads": "/uploads", // passed as '-v /host/path:/container/path' to the docker run command
        },

        servers: {
            one: {},
        },

        buildOptions: {
            serverOnly: true,
        },

        env: {
            ROOT_URL: 'http://fp.costezki.ro',
            MONGO_URL: 'mongodb://localhost/meteor',
            PORT: 3348,
        },

        docker: {
            image: 'costezki/meteor-fingerprinter:latest',
            // change to 'kadirahq/meteord' if your app is not using Meteor 1.4
            //image: 'abernix/meteord:base',
            // imagePort: 80, // (default: 80, some images EXPOSE different ports)
        },

        // This is the maximum time in seconds it will wait
        // for your app to start
        // Add 30 seconds if the server has 512mb of ram
        // And 30 more if you have binary npm dependencies.
        deployCheckWaitTime: 60,

        // Show progress bar while uploading bundle to server
        // You might need to disable it on CI servers
        enableUploadProgressBar: false
    },

    mongo: {
        port: 27017,
        version: '3.4.1',
        servers: {
            one: {}
        }
    }
};
