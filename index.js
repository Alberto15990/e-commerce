require('dotenv').config()
const dbauth = require('./configs/dbauth')
const errors = require('./misc/errors')
const cookieParser= require ('cookie-parser')

const express = require ("express")
const db = require ('./configs/db')
const routes = require("./routes")
const app = express()

app.use(express.json())
app.use(cookieParser())

app.use(routes(db))

app.use((req,res,next) => {
    next(errors[404]);
  })


app.use(({ statusCode, error }, req, res, next) => {
    res.status(statusCode).json({
        success: false,
        message: error.message,
    })
})

app.listen(process.env.PORT, 
    ()=> console.info(`> listening at: ${process.env.PORT}`) )

