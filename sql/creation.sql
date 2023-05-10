DROP TABLE IF EXISTS clients_orders_shipping CASCADE;
DROP TABLE IF EXISTS clients CASCADE;
DROP TABLE IF EXISTS "orders" CASCADE;
DROP TABLE IF EXISTS shipping CASCADE;
DROP EXTENSION IF EXISTS "uuid-ossp";

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS clients (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL,
    surnames TEXT NOT NULL,
    genre TEXT NOT NULL,
    age SMALLINT NOT NULL,
    telephone TEXT NOT NULL,
    city TEXT NOT NULL,
    email TEXT NOT NULL
    
    );

CREATE TABLE IF NOT EXISTS "orders"(
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    ordernumber INT NOT NULL ,
    company TEXT NOT NULL,
    product TEXT NOT NULL,
    supplier TEXT NOT NULL,
    payment TEXT NOT NULL,
    price FLOAT NOT NULL

);


 CREATE TABLE IF NOT EXISTS shipping (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    sender TEXT NOT NULL,
    addressee TEXT NOT NULL,
    shipping_method TEXT NOT NULL,
    weight_kg FLOAT NOT NULL

 );

 CREATE TABLE IF NOT EXISTS clients_orders_shipping (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    client_id uuid,
    order_id uuid,
    shipping_id uuid,
    CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES clients (id),
    CONSTRAINT fk_orders FOREIGN KEY (order_id) REFERENCES orders (id),
    CONSTRAINT fk_shipping FOREIGN KEY (shipping_id) REFERENCES shipping(id)

 );




 