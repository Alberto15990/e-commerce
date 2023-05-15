const router = require ('express').Router()
const controllers = require ('../controllers/products') 


module.exports = (db) => {
    router.post('/', controllers.getSomeProductsById(db))

    return router
}