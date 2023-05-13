const router = require('express').Router()
const clients = require ('./clients')
const authRoutes = require ('./auth')
const userRoutes = require ('./users')

module.exports = (db) => {
    router.use('/auth', authRoutes(db))
    router.use ('/users', userRoutes())
    router.use('/clients',clients(db))

    return router
}