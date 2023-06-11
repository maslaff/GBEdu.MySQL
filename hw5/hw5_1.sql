CREATE TABLE Cars
(
	Id int auto_increment primary key,
	Car_Name varchar(255) not null,
	Cost int not null
);

INSERT INTO Cars (Car_Name, Cost) VALUES 
	('Audi', 52642),
	('Mercedes', 57127),
	('Skoda', 9000),
	('Volvo', 29000),
	('Bentley', 350000),
	('Citroen', 21000),
	('Hummer', 41400),
	('Volkswagen', 21600);
    

CREATE TABLE Analysis
(
	an_id int auto_increment primary key,
	an_name varchar(255) not null,
	an_cost int not null,
	an_price int not null,
	an_group int not null
);

CREATE TABLE An_Groups
(
	gr_id int auto_increment primary key,
	gr_name varchar(255) not null,
	gr_temp int not null
);

CREATE TABLE An_Orders
(
	ord_id int auto_increment primary key,
	ord_datetime datetime not null,
	ord_an int not null
);

INSERT INTO Analysis (an_name, an_cost, an_price, an_group) VALUES 
	('ОАК', 123, 234, 1),
	('БАК', 345, 456, 2),
	('ОАМ', 344, 455, 3),
	('УКПУК', 1413, 2524, 4),
	('МЫЯКУ', 3532, 4643, 1),
	('УЙВФМ', 3432, 4543, 3),
	('ГЛКЦ', 765, 876, 2);
    
INSERT INTO An_Groups (gr_name, gr_temp) VALUES 
	('Кровь', 5),
	('Кал', 10),
	('Моча', 8),
	('Мазок', 3);

INSERT INTO An_Orders (ord_datetime, ord_an) VALUES 
	('2022-01-01', 2),
	('2022-01-01', 1),
	('2022-01-02', 3),
	('2022-01-03', 5),
	('2022-01-03', 4),
	('2022-01-04', 6),
	('2022-01-04', 2),
	('2022-01-04', 7),
	('2022-01-05', 2),
	('2022-01-06', 3),
	('2022-01-07', 6),
	('2022-01-08', 1),
	('2022-01-08', 3),
	('2022-01-09', 5),
	('2022-01-09', 6),
	('2022-01-09', 2),
	('2022-01-10', 7),
	('2022-01-11', 3),
	('2022-01-12', 2),
	('2022-01-15', 4);

CREATE TABLE Trains
(
	Id int auto_increment primary key,
    train_id int not null,
	station varchar(255) not null,
	station_time time not null
);

INSERT INTO Trains (train_id, station, station_time) VALUES 
	(110, 'San Francisco', '10:00:00'),
	(110, 'Redwood City', '10:54:00'),
	(110, 'Palo Alto', '11:02:00'),
	(110, 'San Jose', '12:35:00'),
	(120, 'San Francisco', '11:00:00'),
	(120, 'Palo Alto', '12:49:00'),
	(120, 'San Jose', '13:30:00');
