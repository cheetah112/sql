-- Tao database
CREATE DATABASE techmaster_system;

-- Tao cac bang
CREATE TABLE blog(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255),
	DESCRIPTION VARCHAR(255),
	create_at DATE
);

CREATE TABLE role(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(255)
);

CREATE TABLE opening_schedule(
	id INT PRIMARY KEY AUTO_INCREMENT,
	start_date date,
	address VARCHAR(255),
	study_day VARCHAR(255),
	study_time VARCHAR(255)
);

CREATE TABLE course(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(255),
	time_line VARCHAR(255),
	DESCRIPTION VARCHAR(255),
	price DOUBLE,
	type_course VARCHAR(255),
	vote INT,
	opening_schedule_id INT,
	FOREIGN KEY (opening_schedule_id) REFERENCES opening_schedule(id)
);

CREATE TABLE USER(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(255),
	phone VARCHAR(15),
	email VARCHAR(255) UNIQUE,
	role_id INT,
	course_id INT,
	FOREIGN KEY (role_id) REFERENCES ROLE(id),
	FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE table account_banking(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name_bank VARCHAR(255),
	account_num VARCHAR(255),
	user_id INT UNIQUE,
	FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE transaction_history(
	id INT PRIMARY KEY AUTO_INCREMENT,
	registration_date DATE,
	STATUS VARCHAR(255),
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES USER(id)
);

-- Them du lieu vao cac bang
INSERT INTO role(NAME)
VALUES
('admin'),
('manager'),
('accountant'),
('teacher'),
('student');

INSERT INTO opening_schedule(start_date, address, study_day, study_time)
VALUES
('2022-04-01', 'To Huu', '3-5-7', '2h30p'),
('2022-05-01', 'To Huu', '3-5-7', '2h30p'),
('2022-06-01', 'To Huu', '3-5-7', '2h30p'),
('2022-07-01', 'To Huu', '3-5-7', '2h30p'),
('2022-08-01', 'To Huu', '3-5-7', '2h30p');

INSERT INTO course(NAME, time_line, DESCRIPTION, price, type_course, vote, opening_schedule_id)
VALUES
('java 10', '10 thang', 'java fullstack', 24000000, 'online',5,1),
('ios 10', '3 thang', 'lap tring ios', 7000000, 'online',4,1),
('java 11', '10 thang', 'java fullstack', 24000000, 'offline',5,2),
('ios 11', '3 thang', 'lap tring ios', 7000000, 'online',5,2),
('java 12', '10 thang', 'java fullstack', 24000000, 'offline',5,3),
('java 13', '10 thang', 'java fullstack', 24000000, 'offline',5,4),
('java 14', '10 thang', 'java fullstack', 24000000, 'offline',5,5);

INSERT INTO user(NAME, phone, email, role_id, course_id)
VALUES
('Nam', '0911111111','nam@gmail.com',5,1),
('Cuong', '0912222222','cuong@gmail.com',1,null),
('Thinh', '0913333333','thinh@gmail.com',4,1),
('Hoang', '0914444444','hoang@gmail.com',5,1),
('Huong', '0915555555','huong@gmail.com',2,null),
('Ngoc', '0916666666','ngoc@gmail.com',3,null),
('Trang', '0917777777','trang@gmail.com',5,2),
('Tien', '0918888888','tien@gmail.com',5,3),
('Viet', '0919999999','viet@gmail.com',5,4),
('Nhat', '0911212121','nhat@gmail.com',5,5);

INSERT INTO account_banking(name_bank, account_num, user_id)
VALUES
('acb', '0911111111',1),
('techcombank', '0912222222',2),
('MB', '0913333333',3),
('acb', '0914444444',4),
('MB', '0915555555',5),
('BIDV', '0916666666',6),
('BIDV', '0917777777',7),
('vietinbank', '0918888888',8),
('vietcombank', '0919999999',9),
('acb', '0911212121',10);

INSERT INTO transaction_history(registration_date, STATUS, user_id)
VALUES
('2022-04-01','done',1),
('2022-04-01','done',2),
('2022-04-01','done',3),
('2022-04-01','done',4),
('2022-04-01','done',5),
('2022-04-01','done',6),
('2022-04-01','done',7);

-- Hien thi ho so ca nhan cua cac user
SELECT user.id, user.name, user.phone, user.email,role.NAME,account_banking.name_bank, account_banking.account_num 
FROM (user LEFT JOIN role ON user.role_id=role.id) LEFT JOIN account_banking ON user.id=account_banking.user_id;

-- Hien thi cac hoc vien dang ky hoc online
SELECT user.id,user.name, user.phone, user.email
FROM user LEFT JOIN course ON user.course_id = course.id
WHERE course.type_course = 'online' AND user.role_id = 5;

-- Hien thi cac khoa hoc khai giang trong ngay:
SELECT opening_schedule.*, course.name, course.time_line, course.description, course.price, course.type_course, course.vote
FROM opening_schedule LEFT JOIN course ON opening_schedule.id = course.opening_schedule_id
WHERE opening_schedule.start_date = '2022-04-01';
--
-- Hien thi lich khai giang cac khoa hoc:
SELECT course.id, course.name, course.time_line, course.description, course.price, course.type_course, course.vote,
opening_schedule.start_date, opening_schedule.address, opening_schedule.study_day, opening_schedule.study_time
FROM course LEFT JOIN opening_schedule ON course.opening_schedule_id = opening_schedule.id;
--
-- Hien thi chi tiet lich su giao dich cac hoc vien:
SELECT transaction_history.id,user.NAME ,course.NAME,transaction_history.registration_date, transaction_history.STATUS
FROM transaction_history LEFT JOIN (user LEFT JOIN course ON user.course_id = course.id) ON transaction_history.user_id = user.id
WHERE user.role_id = 5; 
