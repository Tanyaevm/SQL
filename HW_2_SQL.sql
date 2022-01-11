create table employees(
	id serial primary key,
	employee_name varchar(50) not null
	);

select * from employees;

insert into employees (employee_name)
values ('Katya'),
	   ('Vadim'),
	   ('Anya'),
	   ('Tanya'),
	   ('Jenya'),
	   ('Sasha'),
	   ('Lida'),
	   ('Max'),
	   ('Alex'),
	   ('Vitya'),
	   ('Vasya'),
	   ('Petr'),
	   ('Valentina'),
	   ('Valentin'),
	   ('Valya'),
	   ('Ivan'),
	   ('Victor'),
	   ('Tatsiana'),
	   ('Anna'),
	   ('Leonid'),
	   ('Maxim'),
	   ('Vlad'),
	   ('Ulya'),
	   ('Angelina'),
	   ('Masha'),
	   ('Aleksandr'),
	   ('Kolya'),
	   ('Rick'),
	   ('Fedr'),
	   ('Elena'),
	   ('Alena'),
	   ('Lena'),
	   ('Toma'),
	   ('Tamara'),
	   ('Oksana'),
	   ('Angela'),
	   ('Angelika'),
	   ('Lika'),
	   ('Marina'),
	   ('Maria'),
	   ('Roman'),
	   ('Roma'),
	   ('Kira'),
	   ('Kirill'),
	   ('Aleksey'),
	   ('Lenya'),
	   ('Danik'),
	   ('Daniil'),
	   ('Danil'),
	   ('Danya'),
	   ('Egor'),
	   ('Senya'),
	   ('Arsenii'),
	   ('Artem'),
	   ('Dima'),
	   ('Dmitrii'),
	   ('Zanna'),
	   ('Alik'),
	   ('Albert'),
	   ('Ruslan'),
	   ('Nikita'),
	   ('Tory'),
	   ('Iren'),
	   ('Ira'),
	   ('Irina'),
	   ('Inna'),
	   ('Viktoriya'),
	   ('Vika'),
	   ('Olya'),
	   ('Olga');


create table salary_1(
	id serial primary key,
	monthly_salary int not null
	);

select * from salary_1;

insert into salary_1 (monthly_salary)
values ('1000'),
	   ('1100'),
	   ('1200'),
	   ('1300'),
	   ('1400'),
       ('1500'),
	   ('1600'),
	   ('1700'),
	   ('1800'),
	   ('1900'),
	   ('2000'),
	   ('2100'),
	   ('2200'),
	   ('2300'),
	   ('2400'),
	   ('2500');
	   
	  
create table employee_salary(
	id serial primary key,
	employee_id int unique not null,
	salary_id int not null
);

select * from employee_salary;

insert into employee_salary (employee_id, salary_id)
values (3, 7),
	   (1, 4),
	   (5, 9),
	   (10, 13),
	   (16, 4),
	   (18, 2),
	   (23, 10),
	   (21, 13),
	   (27, 4),
	   (25, 3),
	   (29, 7),
	   (30, 2),
	   (31, 7),
	   (37, 9),
	   (36, 5),
	   (39, 8),
	   (41, 2),
	   (40, 15),
	   (44, 7),
	   (59, 3),
	   (50, 13),
	   (57, 12),
	   (51, 8),
	   (54, 12),
	   (60, 14),
	   (62, 2),
	   (64, 6),
	   (66, 7),
	   (65, 8),
	   (70, 8),
	   (76, 3),
	   (96, 9),
	   (88, 5),
	   (77, 7),
	   (101, 9),
	   (110, 4),
	   (300, 2),
	   (130, 2),
	   (99, 2),
	   (100, 6);
	   
select * from employee_salary;

create table roles_1(
	id serial primary key,
	role_name int unique not null
);

select * from roles_1;

alter table roles_1
alter column role_name type varchar(30) using roles_1::varchar(30);

insert into roles_1 (role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

select * from roles_1;

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles_1(id)
);

select * from roles_employee;

insert into roles_employee (employee_id, role_id)
values (1, 1),
       (4, 4),
       (6, 15),
       (7, 6),
       (8, 4),
       (9, 1),
       (2, 20),
       (3, 11),
       (10, 6),
       (12, 8),
       (13, 5),
       (14, 6),
       (16, 4),
       (18, 5),
       (20, 1),
       (21, 9),
       (25, 8),
       (27, 5),
       (29, 4),
       (31, 12),
       (33, 7),
       (30, 9),
       (36, 1),
       (37, 11),
       (39, 5),
       (40, 1),
       (42, 2),
       (47, 5),
       (49, 6),
       (50, 8),
       (55, 11),
       (54, 2),
       (53, 10),
       (57, 14),
       (59, 15),
       (60, 15),
       (61, 14),
       (65, 18),
       (66, 16),
       (70, 17);
       
select * from roles_employee;