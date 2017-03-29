/**
 * Created by lps on 18.11.16.
 */

// Copy text in index.pug in clipboard
var clipboard = new Clipboard('#clipboard');

clipboard.on('success', function (e) {
    // console.info('Action:', e.action);
    // console.info('Text:', e.text);
    // console.info('Trigger:', e.trigger);

    e.clearSelection();
});

clipboard.on('error', function (e) {
    // console.error('Action:', e.action);
    // console.error('Trigger:', e.trigger);
});
