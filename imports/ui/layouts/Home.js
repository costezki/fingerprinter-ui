import "./Home.html";

Template.Home.onCreated(() => {
    const clipboard = new Clipboard('#clipboard');

    clipboard.on('success', function (e) {
        e.clearSelection();
    });
});