const router = require('express').Router()
const orders = require ('./orders')
const products = require('./products')
const clients = require ('./clients')
const authRoutes = require ('./auth')
const userRoutes = require ('./users')


module.exports = (db) => {
    router.use('/auth', authRoutes(db))
    router.use ('/users', userRoutes())
    router.use('/clients',clients(db))
    router.use('/orders', orders(db))
    router.use('/products', products(db))

    return router
}