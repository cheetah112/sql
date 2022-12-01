-- CREATE DATABASE techmaster_system;
-- CREATE TABLE blog(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	title VARCHAR(255),
-- 	DESCRIPTION VARCHAR(255),
-- 	create_at DATE
-- );

-- CREATE TABLE role(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	NAME VARCHAR(255)
-- );

-- CREATE table account_banking(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	name_bank VARCHAR(255),
-- 	account_num VARCHAR(255)
-- );
-- 
-- CREATE TABLE opening_schedule(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	start_date date,
-- 	address VARCHAR(255),
-- 	study_day VARCHAR(255),
-- 	study_time VARCHAR(255)
-- );

-- CREATE TABLE course(
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	NAME VARCHAR(255),
-- 	time_line VARCHAR(255),
-- 	DESCRIPTION VARCHAR(255),
-- 	price DOUBLE,
-- 	type_course VARCHAR(255),
-- 	vote INT,
-- 	opening_schedule_id INT,
-- 	FOREIGN KEY (opening_schedule_id) REFERENCES opening_schedule(id)
-- );

CREATE TABLE USER(
	id INT PRIMARY KEY AUTO_INCREMENT,
	NAME VARCHAR(255),
	phone VARCHAR(15),
	email VARCHAR(255) UNIQUE,
	role_id INT,
	account_banking_id INT UNIQUE,
	course_id INT,
	FOREIGN KEY (role_id) REFERENCES ROLE(id),
	FOREIGN KEY (account_banking_id) REFERENCES account_banking(id),
	FOREIGN KEY (course_id) REFERENCES course(id)
);


CREATE TABLE transaction_history(
	id INT PRIMARY KEY AUTO_INCREMENT,
	registration_date DATE,
	STATUS VARCHAR(255),
	user_id INT,
	FOREIGN KEY (user_id) REFERENCES USER(id)
);

