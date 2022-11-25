--  CREATE TABLE student3 (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	first_name VARCHAR(50),
-- 	last_name VARCHAR(50),
-- 	email VARCHAR(50),
-- 	address VARCHAR(50),
-- 	phone VARCHAR(50)
-- );

-- SELECT id, CONCAT(first_name,' ',last_name) AS full_name, email, address, phone FROM student3;
-- SET @dayvalue = 2;
-- SELECT @dayvalue;
SET @a = 'Thanh';
SET @b = 'Ngọc';
SET @c = 'Trang';
SET @d = 't';
SELECT * FROM student3 WHERE last_name COLLATE utf8mb4_0900_ai_ci = @a;
SELECT * FROM student3 WHERE last_name COLLATE utf8mb4_0900_ai_ci = @b OR last_name COLLATE utf8mb4_0900_ai_ci = @c;
SELECT * FROM student3 WHERE last_name COLLATE utf8mb4_0900_ai_ci LIKE CONCAT('%',@d,'%');
