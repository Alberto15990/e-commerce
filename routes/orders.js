const router = require ('express').Router()
const controllers = require ('../controllers/orders') 


module.exports = (db) => {
    router.get('/', controllers.getSomeOrders(db))

    return router
}