CREATE TABLE nha_cung_cap(
ma_nha_cung_cap INT PRIMARY KEY AUTO_INCREMENT,
ten_nha_cung_cap VARCHAR(255),
dia_chi VARCHAR(255),
phone VARCHAR(20)
);

CREATE TABLE thuoc(
ma_thuoc INT PRIMARY KEY AUTO_INCREMENT,
ten_thuoc VARCHAR(255),
don_vi_tinh VARCHAR(40),
so_luong INT 
);

CREATE TABLE nhan_vien(
ma_nhan_vien INT PRIMARY KEY AUTO_INCREMENT,
ten_nhan_vien VARCHAR(255),
chuc_vu VARCHAR(255),
score FLOAT,
salary DOUBLE
);

INSERT INTO nha_cung_cap(ten_nha_cung_cap, dia_chi, phone)
VALUES
('a','Ba Dinh, HN','0911111111'),
('b','Dong Da, HN','0922222222'),
('c','Dong Da, HP','0933333333'),
('d','Dong Da, QN','0944444444'),
('e','Lan Ong, HP','0922222222'),
('f','Xuan Thuy, HN','0922222222'),
('g','NTT, TP.HCM','0922222222'),
('h','Tu Ky, Hue','0922222222'),
('i','Bich Dao, NB','0922222222'),
('k','Dong Da, TH','0922222222');

INSERT INTO thuoc(ten_thuoc, don_vi_tinh, so_luong)
VALUES 
('a','vien',100),
('b','hop',100),
('c','vien',100),
('d','hop',100),
('e','hop',100),
('f','vi',100),
('g','vien',100),
('h','vien',100),
('i','hop',100),
('k','vien',100);

INSERT INTO nhan_vien(ten_nhan_vien, chuc_vu, score, salary)
VALUES
('Nam','quan ly', 100, 18000000),
('Tuan','nhan vien', 80, 8000000),
('Phong','quan ly', 95, 8000000),
('Vinh','quan ly', 90, 8000000),
('Dung','quan ly', 100, 8000000),
('Ngoc','quan ly', 100, 8000000),
('Trang','quan ly', 85, 8000000),
('Huan','quan ly', 70, 8000000),
('Tien','quan ly', 100, 8000000),
('Quang','quan ly', 50, 8000000);

SELECT * FROM nha_cung_cap WHERE dia_chi LIKE ('%HN%');

SELECT COUNT(ma_thuoc) AS 'So luong thuoc' FROM thuoc;

SELECT AVG(score) AS 'Trung binh diem chuyen can' FROM nhan_vien;

SELECT ten_nhan_vien, salary*score*0.01 AS 'luong' FROM nhan_vien; 
