let shell = require('shelljs');

describe("server side tests", () => {
    // it("call shell script", () => {
    //     shell.ls('*.*').forEach((file) => {
    //         shell.echo(file)
    //     });
    // });

    it("call sudo", () => {
        shell.exec("sudo apt-get update", {stdin:"ok"}, (code, stdout, stderr) => {
            shell.echo("code:"+code);
            shell.echo("stdout:"+stdout);
            shell.echo("stderr:"+stderr);
        })
        shell.echo("After exec");
    })
});