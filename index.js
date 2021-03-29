const express = require('express');
const app = express();
var os = require("os");

app.get('/', (req, res) => {
    var hostname = os.hostname();
    res.send('Hello World! from container:' + hostname);
});

app.listen(8081, () => {
    console.log('Listening at port 8081');
});