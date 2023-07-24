const express = require('express')
const process = require('process')
const app = express()
const port = 3000

process.on('SIGINT', ()=>{
        console.log('Applicaio is interrupted...')
        process.exit(0)
})


process.on('SIGTERM', ()=>{
        console.log('Applicaio is being terminated...')        
        process.exit(0)
})


app.get('/', (req, res) => {
          res.send('This express is was executed by Node js conainer!')
})

app.listen(port, () => {
          console.log(`Example app listening on port ${port}`) 
})