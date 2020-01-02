const express = require('express')
const os = require('os')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('Hi, I am running on host' + os.hostname()))

app.listen(port, () => console.log(`App started, listening on port ${port}!`))

