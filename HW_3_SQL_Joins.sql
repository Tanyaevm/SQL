--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select * from salary_1;
select * from employees;
select * from employee_salary;

select employee_id, employee_name, salary_1.monthly_salary, salary_id from employee_salary
	join employees
	on employee_salary.employee_id = employees.id
	join salary_1
	on employee_salary.salary_id = salary_1.id;

--2. ������� ���� ���������� � ������� �� ������ 2000.

select employee_id, employee_name, salary_1.monthly_salary, salary_id from employee_salary
	join employees
	on employee_salary.employee_id = employees.id
	join salary_1
	on employee_salary.salary_id = salary_1.id
		where monthly_salary<2000;

--3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
	
	select employee_name, salary_1.monthly_salary from employee_salary
	full outer join employees
	on employee_salary.employee_id = employees.id
	full outer join salary_1
	on employee_salary.salary_id = salary_1.id
		where employee_name is null;
	
--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select employee_name, salary_1.monthly_salary from employee_salary
	full outer join employees
	on employee_salary.employee_id = employees.id
	full outer join salary_1
	on employee_salary.salary_id = salary_1.id
		where salary_1.monthly_salary<2000 and employee_name is null;
	
--5. ����� ���� ���������� ���� �� ��������� ��.
	
select employee_name, salary_1.monthly_salary from employee_salary
	full outer join employees
	on employee_salary.employee_id = employees.id
	full outer join salary_1
	on employee_salary.salary_id = salary_1.id
		where salary_1.monthly_salary is null;

--6. ������� ���� ���������� � ���������� �� ���������.
select * from employees;
select * from roles_1;
select * from roles_employee;

select employee_name, role_name from roles_employee
	join employees
	on roles_employee.employee_id = employees.id
	join roles_1
	on roles_employee.role_id = roles_1.id;

--7. ������� ����� � ��������� ������ Java �������������.

select * from employees;
select * from roles_1;
select * from roles_employee;

select employee_name, role_name from roles_employee
	join employees
	on roles_employee.employee_id = employees.id
	join roles_1
	on roles_employee.role_id = roles_1.id
		where role_name like '% Java %';

--8. ������� ����� � ��������� ������ Python �������������.

select employee_name, role_name from roles_employee
	join employees
	on roles_employee.employee_id = employees.id
	join roles_1
	on roles_employee.role_id = roles_1.id 
		where role_name like '% Python %';
--9. ������� ����� � ��������� ���� QA ���������.

select employee_name, role_name from roles_employee
	join employees
	on roles_employee.employee_id = employees.id
	join roles_1
	on roles_employee.role_id = roles_1.id
		where role_name like '% QA %';

--10. ������� ����� � ��������� ������ QA ���������.

select employee_name, role_name from roles_employee
	join employees
	on roles_employee.employee_id = employees.id
	join roles_1
	on roles_employee.role_id = roles_1.id
		where role_name like '% Manual QA %';

--11. ������� ����� � ��������� ��������������� QA

select employee_name, role_name from roles_employee
	join employees
	on roles_employee.employee_id = employees.id
	join roles_1
	on roles_employee.role_id = roles_1.id
		where role_name like '% Automation QA %';

--12. ������� ����� � �������� Junior ������������

create table emp_sal_rol(
	id serial primary key,
	emp_id int not null,
	sal_id int not null,
	rol_id int not null,
	foreign key (emp_id)
		references employees(id),
	foreign key (sal_id)
		references salary_1(id),
	foreign key (rol_id)
		references roles_1(id)
);

select * from emp_sal_rol;

insert into emp_sal_rol (emp_id, sal_id, rol_id)
values (1, 1, 20),
       (3, 3, 19),
       (4, 5, 18),
       (7, 16, 17),
       (5, 5, 16),
       (11, 11, 15),
       (10, 12, 14),
       (43, 14, 13),
       (2, 4, 12),
       (6, 5, 11),
       (8, 8, 10),
       (9, 9, 9),
       (12, 1, 8),
       (13, 4, 8),
       (14, 14, 7),
       (15, 15, 6),
       (16, 11, 5),
       (17, 5, 4),
       (18, 15, 3),
       (19, 1, 2),
       (23, 12, 1),
       (22, 9, 2),
       (21, 8, 1),
       (20, 7, 20),
       (25, 7, 5),
       (28, 10, 5),
       (27, 11, 3),
       (29, 14, 8),
       (25, 12, 6),
       (30, 3, 11),
       (31, 2, 5),
       (33, 1, 16),
       (35, 12, 15),
       (40, 12, 14),
       (46, 15, 1),
       (41, 15, 3),
       (42, 11, 14),
       (47, 6, 4),
       (44, 3, 5),
       (53, 3, 6),
       (55, 3, 6),
       (59, 2, 8),
       (58, 1, 8),
       (64, 5, 7),
       (65, 6, 4),
       (69, 7, 3);

select * from employees;
select * from salary_1;
select * from roles_1;
select * from emp_sal_rol;     
      
select employee_name, salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Junior%';
	 
--13. ������� ����� � �������� Middle ������������

select employee_name, salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Middle%';

--14. ������� ����� � �������� Senior ������������

select employee_name, salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Senior%';

--15. ������� �������� Java �������������

select * from salary_1;
select * from roles_1;
select * from emp_sal_rol;    

select salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Java%';

--16. ������� �������� Python �������������

select salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Python%';

--17. ������� ����� � �������� Junior Python �������������

select employee_name, salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������

select employee_name, salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Middle JavaScript%';

--19. ������� ����� � �������� Senior Java �������������

select employee_name, salary_1.monthly_salary, roles_1.role_name from emp_sal_rol 
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Senior Java%';

--20. ������� �������� Junior QA ���������

select salary_1.monthly_salary, roles_1.role_name from emp_sal_rol
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Junior%' and role_name like '%QA%';

--21. ������� ������� �������� ���� Junior ������������

select avg(salary_1.monthly_salary) as avg_salary from emp_sal_rol 
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Junior%'; 

--22. ������� ����� ������� JS �������������

select sum(salary_1.monthly_salary) as sum_salary from emp_sal_rol 
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%JavaScript%'; 
	
--23. ������� ����������� �� QA ���������

select min(salary_1.monthly_salary) as min_salary from emp_sal_rol 
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '% QA %';

--24. ������� ������������ �� QA ���������

select max(salary_1.monthly_salary) as max_salary from emp_sal_rol 
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '% QA %' ;

--25. ������� ���������� QA ���������
	
select count(role_name) as count_QA from emp_sal_rol
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%QA%';
	
--26. ������� ���������� Middle ������������.

select count(role_name) as count_Middle from emp_sal_rol
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%Middle%';
	
--27. ������� ���������� �������������
	
select count(role_name) as count_developer from emp_sal_rol
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%developer%';

--28. ������� ���� (�����) �������� �������������.
	
select sum(salary_1.monthly_salary) as sum_salary_developer from emp_sal_rol
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where role_name like '%developer%' ;

--29. ������� �����, ��������� � �� ���� ������������ �� �����������

select employee_name, role_name, salary_1.monthly_salary from emp_sal_rol
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		order by (salary_1.monthly_salary) asc;
	
--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300

select employee_name, role_name, salary_1.monthly_salary from emp_sal_rol
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where salary_1.monthly_salary between 1700 and 2300
			order by (salary_1.monthly_salary) asc;
	
--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
		
select employee_name, role_name, salary_1.monthly_salary from emp_sal_rol
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where salary_1.monthly_salary<2300
			order by (salary_1.monthly_salary) asc;

--������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
		
		select employee_name, role_name, salary_1.monthly_salary from emp_sal_rol
	join employees
	on emp_id = employees.id
	join salary_1
	on sal_id = salary_1.id
	join roles_1
	on rol_id = roles_1.id
		where salary_1.monthly_salary in (1100, 1500, 2000)
			order by (salary_1.monthly_salary) asc;
