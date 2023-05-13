const router = require ('express').Router()
const controllers = require ('../controllers/clients') 


module.exports = (db) => {
    router.get('/', controllers.getAllClients(db))

    return router
}