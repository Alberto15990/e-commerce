const {sql} = require ('slonik')

const getSomeOrders = (db) => async () =>{
    try{
        const response = await db.query(sql.unsafe`
        SELECT product FROM orders
        WHERE Price >= 1000;
        `)

        return { 
            ok: true,
            response: response.rows
        }
    }catch(error){
        console.log(error)
        return{
        ok: false,
        message: error.message, 
        }
    }
}

module.exports ={
    getSomeOrders,
}