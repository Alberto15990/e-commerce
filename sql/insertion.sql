


INSERT INTO clients (
    name,surnames,genre,age,telephone,city,email
)VALUES
    ('Pepe','Rodriguez Lopez','Male',32,'654321098','Madrid','user1@falsemail.com'),
    ('Rosa','Perez Garcia','Female',21,'654321765','Washington','user2@falsemail.com'),
    ('Alberto','Lopez Ropero','Male',52,'654321654','Cordoba','user3@falsemail.com'),
    ('Josh','Taylor Brown','Male',16,'654321236','Inglaterra','user4@falsemail.com'),
    ('Morgan','Scott Robinson','Male',28,'654320987','Jamaica','user5@falsemail.com'),
    ('Angela','Martinez Laso','Female',46,'654321567','Madrid','user6@falsemail.com'),
    ('Sonia','Martinez Martinez','Female',32,'612345678','Albacete','user7@falsemail.com'),
    ('Jesus','Del Amo Lopez','Male',66,'654543765','Peru','user8@falsemail.com'),
    ('Ryan','Cano Palencia','Male',43,'698765432','Venezuela','user9@falsemail.com'),
    ('Erika','Alvarez Aramburu','Female',66,'654321098','Bilbao','user10@falsemail.com');



INSERT INTO "orders" (
    ordernumber, company,product, supplier, payment,price
) VALUES
    (32786,'Apple','Iphone 48','Destroy Phones S.L.', 'Card', 1232.67),
    (45120,'Samsung',' Tv O-Led 55"','Samsung EEUU', 'Card', 2691.33),
    (99087,'Sony','Play Station 1','Old But Gold S.L.', 'Card', 182.66),
    (56023,'Microsoft','Xbox 360','Microsoft England', 'Card', 450),
    (21102,'Funko','Allen Iverson','Funk That! S.L.', 'Card', 33.98),
    (55443,'Rockstar Games','GTA Vice City','Rockstar S.L.', 'Card', 45.40),
    (30956,'Disney','The Lion King Film','Disney Europe S.L.', 'Card', 14.21),
    (77789,'Motown','MJ Greatest Hits','Motown Records S.L.', 'Card', 327.99),
    (21044,'Nokia','Nokia 3310','Nokia Latam S.L.', 'Card', 6000.33),
    (65578,'Xiaomi','Xiaomi Band 4',' S.XXI Watches S.L.', 'Card', 45);



INSERT INTO shipping (
    sender, addressee,shipping_method,weight_kg
)VALUES
    ('Amazon' ,'C/Paseo de Recoletos 115','Van', 0.650),
    ('Amazon' ,'Barack Obama St. 121','Plane', 4.35),
    ('Amazon' ,'C/Paseo de la Castellana 22','Van', 1.27),
    ('Amazon' ,'Arthur King St 225','Ship', 1.86),
    ('Amazon' ,'C/ Serrano 335','Van', 0.250),
    ('Amazon' ,'C/Lopez de Hoyosw 1','Van', 0.105),
    ('Amazon' ,'C/Paseo de los Navajos 7','Ship', 0.98),
    ('Amazon' ,'C/ Acacias 86','Ship', 0.225),
    ('Amazon' ,'C/El Pana 786','Plane', 4.5),
    ('Amazon' ,'C/ Joaquin Sabina','Van', 0.78);




