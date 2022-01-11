create table factories(
	id serial primary key,
 	factory_title varchar(50)
);

insert into factories(factory_title)
values ('Hanwai'),
       ('Kenling'),
       ('Dongguan'),
       ('Abis'),
       ('Foxconn');
   
create table mobile_phones(
 	 id serial primary key,
	 brand_id int,
	 product_model varchar(40),
 	 price int,
 	 factory_id int
);

insert into mobile_phones(brand_id, product_model, price, factory_id)
values (2, 'iphone_X', 600, 5),
       (2, 'iphone_11', 700, 4),
       (1, 'A51', 400, 1),
       (3, 'P40', 600, 5),
       (1, 's21', 1500, 5),
       (3, 'H200', 300, 3),
       (2, 'iphone_12', 1000, 5),
       (3, 'Q15', 400, 2),
       (1, 'P50', 900, 1),
       (2, 'iphone_13', 1800, 4),
       (1, 'S22', 1300, 3),
       (1, 'A31', 200, 5);
    
    
create table monitors(
 	id serial primary key,
 	brand_id int,
 	product_model varchar(40),
 	price int,
 	factory_id int
);


insert into monitors(brand_id, product_model, price, factory_id)
values (2, 'P300', 100, 1),
       (2, 'A320', 200, 3),
       (1, 'NV1000_Ultra', 450, 5),
       (3, 'P400_super_Amolet', 240, 3),
       (1, 'AV_1000', 400, 4),
       (3, 'UKV_100', 900, 2),
       (2, 'KV-200', 2000, 2),
       (3, 'IPS_1980', 550, 1),
       (1, 'IPS_4k', 630, 4),
       (2, 'IPS_8k_1c', 1200, 3),
       (1, 'TFTN_1500', 1300, 2),
       (1, 'BioPixel_2', 12000, 5);
    
create table scooters(
	id serial primary key,
	brand_id int,
	product_model varchar(40),
	price int,
 	factory_id int
);
    
insert into scooters(brand_id, product_model, price, factory_id)
values (2, 'A-P300', 2000, 2),
       (2, 'B-A320', 280, 4),
       (1, 'C-NV1000_Ultra', 650, 1),
       (3, 'D_P400_super_Amolet', 2400, 2),
       (1, 'E-AV_1000', 1100, 5),
       (3, 'F-UKV_100', 2300, 3),
       (2, 'G-KV-200', 200, 1),
       (3, 'H-IPS_1980', 530, 4),
       (1, 'I-IPS_4k', 6300, 2),
       (2, 'J-IPS_8k_1c', 120, 1),
       (1, 'K-TFTN_1500', 130, 5),
       (1, 'O-BioPixel_2', 1200, 3);
    
    
create table orders(
	 id serial primary key,
	 brand_id int,
	 product_model varchar(40),
	 price int,
	 pcs int
); 

insert into orders(brand_id, product_model, price, pcs)
values (2, 'iphone_13', 1800, 1),
       (2, 'B-A320', 280, 2),
       (1, 'IPS_4k', 630, 1);
    
    
create table brands(
 	id serial primary key,
	brand_title varchar(50)
);

insert into brands(brand_title)
values ('Samsung'),
       ('Apple'),
       ('Huawei'),
       ('HP'),
       ('Koogu');
    
create table phones_apple(
	 id serial primary key,
	 model varchar(40),
	 ram int not null,
	 front_camera int,
	 price int
);


insert into phones_apple(model, ram, front_camera, price)
values ('X', 4, 8, 400),
       ('11', 6, 10, 700),
       ('12', 8, 12, 1000),
       ('7', 4, 12, 400),
       ('XR', 6, 12, 800),
       ('XS', 6, 12, 1000),
       ('13', 6, 12, 1500),
       ('8', 4, 12, 700),
       ('SE 2020', 6, 8, 700);
   
create table phones_samsung(
	 id serial primary key,
	 model varchar(40),
	 ram int not null,
	 front_camera int,
	 price int
);

insert into phones_samsung(model, ram, front_camera, price)
values ('A50', 6, 10, 300),
       ('A50', 8, 10, 400),
       ('A52', 8, 16, 500),
       ('S20', 8, 24, 1500),
       ('S21', 8, 12, 1000),
       ('S22', 6, 12, 1200),
       ('A71', 6, 12, 1200),
       ('A91', 4, 12, 1900),
       ('A57', 8, 8, 900),
       ('A32', 8, 4, 800),
       ('A33', 8, 5, 750),
       ('A43', 8, 5, 850);

create table apple_orders(
 	id serial primary key,
 	phone_id int
);

insert into apple_orders(phone_id)
values (3),
       (9),
       (5),
       (1),
       (4);
    
create table samsung_orders(
	 id serial primary key,
	 phone_id int
);
    
 