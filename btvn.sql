-- CREATE DATABASE if not exists quan_ly_kho;
-- CREATE TABLE product(
-- 	id INT AUTO_INCREMENT,
-- 	NAME VARCHAR(255),
-- 	price DOUBLE,
-- 	created_at DATETIME,
-- 	PRIMARY KEY(id)
-- )
INSERT INTO product(NAME, price, created_at)
VALUES
('Toyota Vios',520000000,NOW()),
('Toyota Cross',800000000,NOW()),
('Huyndai Accent',510000000,NOW()),
('Honda City',550000000,NOW()),
('Vinfast Fadil',360000000,NOW()),
('Misubishi Xpander',620000000,NOW()),
('Mazda CX5',900000000,NOW()),
('Kia Seltos',700000000,NOW()),
('Kia K3',650000000,NOW()),
('Ford Ranger',1100000000,NOW()),
('Honda CRV',1100000000,NOW()),
('Huyndai i10',360000000,NOW()),
('Huyndai Santafe',1000000000,NOW()),
('Kia Carnival',1800000000,NOW()),
('Huyndai Tucson',800000000,NOW());
SELECT * FROM product WHERE price > 115000000;
SELECT * FROM product WHERE NAME LIKE '%k%' ;
SELECT * FROM product WHERE NAME LIKE'kia%' OR price < 200000000;
SELECT * FROM product WHERE price IN (100000000,130000000,140000000,150000000,160000000,170000000);
SELECT DISTINCT price FROM product;


