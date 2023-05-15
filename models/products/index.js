const {sql} = require ('slonik')
const { v4: uuidv4 } = require("uuid")

const getSomeProductsById = (db) => async (newOrder) =>{
    
    //NO FUNCIONA --- ME ARROJA ESTE ERROR --- SQL tag cannot be bound an undefined value.

    try {
        const newProductId = uuidv4();
        await db.query(sql.unsafe`
            INSERT INTO orders (
                id, product, price
            ) VALUES (
                ${newProductId}, ${newOrder.name},${newOrder.city}
            );
        `)

        await db.query(sql.unsafe`
            INSERT INTO clients (
                name, orders_id
            ) VALUES (
                ${newOrder.name}, ${newProductId}
            );
        `)

        return {
            ok: true,
            data: newOrder 
        }
    } catch (error) {
        console.log(error.message);

        return {
            ok: false
        }
    }
}  

module.exports ={
    getSomeProductsById,
}