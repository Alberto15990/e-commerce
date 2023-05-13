const router = require('express').Router()
const authControllers = require ('../controllers/auth')
const {authorizer} = require('../middlewares')
module.exports = (db) => {
    router.post('/signup', authControllers.signup(db))
    router.post('/signin', authControllers.signin(db))
    router.post('/signout', authorizer , authControllers.signout())

    return router
}