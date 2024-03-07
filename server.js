const express = require('express');

const app = express();

app.get('/', (req,res) => {
    res.json({
        status: 200,
        message: "Hello World!"
    })
})

app.get('/:message', (req,res) => {
    let message = req.params.message
    res.json({
        status: 200,
        message: message
    })
})

app.listen(8080, () => {
    console.log("Server Running");
    console.log("Port: 8080");
})