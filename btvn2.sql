CREATE TABLE btvn2(
id INT,
NAME VARCHAR(125),
Ngay_Bat_Dau DATE,
So_Chiec INT
);
INSERT INTO btvn2()
VALUES 
(1,'Hoang','2007-01-24',250),
(2,'Nam','2007-05-27',220),
(3,'Viet','2007-05-06',170),
(3,'Viet','2007-04-06',100),
(4,'Huong','2007-04-06',220),
(5,'Xuan','2007-06-06',300),
(5,'Xuan','2007-02-06',350);
SELECT CONCAT(id,' : ',NAME,', ',Ngay_Bat_Dau) AS 'thong_tin'
FROM btvn2
CREATE TABLE employee (
employee_id INT,
employee_name VARCHAR(255),
salary DOUBLE
);
INSERT INTO employee()
VALUES 
(12,'Finch',15000),
(22,'Peter',25000),
(32,'Warner',5600),
(42,'Watson',90000);
UPDATE employee 
SET salary = salary*2;
SELECT * FROM employee;
CREATE TABLE if NOT EXISTS student4(
first_name VARCHAR(255),
last_name VARCHAR(255),
birth_day DATE
);
INSERT INTO student4()
VALUES
('Le Thi','Thu','1996-12-12'),
('Vu Thi','Nga','1997-11-17'),
('Nguyen Van','C','2000-12-17'),
('Pham Van','D','1998-10-11'),
('Tran Dinh','Trong','1997-04-25'),
('Bui','Tien Dung','1996-02-28');
SELECT CONCAT(first_name,' ',last_name) AS 'FULL_NAME', DATEDIFF(NOW(),birth_day) AS 'TOTAL_DATE' FROM student4;