use kumardb;
create table departments(
DEPARTMENT_ID int not null primary key,
DEPARTMENT_NAME varchar(50) not null,
MANAGER_ID int not null,
LOCATION_ID int not null);
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (10 , 'Administration' , 200 , 1700 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (20 , 'Marketing' , 201 , 1800 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (30 , 'Purchasing' , 114 , 1700 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (40 , 'Human Recources' , 203 , 2400 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (50 , 'Shipping' , 121 , 1500 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (60 , 'IT' , 103 , 1400 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (70 , 'Public Relations' , 204 , 2700 );
insert into departments (DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID) values (80 , 'Sales' , 145 , 2500 );
select * from departments;

create table employees(
EMPLOYEE_ID int not null primary key,
FIRST_NAME varchar(70) not null, 
LAST_NAME varchar(65) not null,
EMAIL varchar(40) not null,
PHONE_NUMBER int not null,
HIRE_DATE int not null,
JOB_ID varchar(60) not null,
SALARY int not null,
COMISSION_PCT int not null,
MANAGER_ID int not null,
DEPARTMENT_ID int not null);
alter table employees modify PHONE_NUMBER decimal;
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (100 , 'Steven' , 'King' , 'SKING' , 5151234567 , 1987-06-17 , 'AD_PRES' , 24000.00 , 0.00 , 0 , 90 );
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ( 101 , 'Neena' , 'Kochhar' , 'NKOCHHAR' , 5151234568 , 1987-06-18 , 'AD_VP' , 17000.00 , 0.00 , 100 , 90 );
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ( 102 , 'Lex' , 'De Haan' , 'LDEHAAN' , 5151234569 , 1987-06-19 , 'AD_VP' , 17000.00 , 0.00 , 100 , 90 );
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ( 103 , 'Alexander' , 'Hunold' , 'AHUNOLD' , 5904234567 , 1987-06-20 , 'IT_PROG' , 9000.00 , 0.00 , 102 , 60 );
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ( 104 , 'Bruce' , 'Ernst' , 'BERNST' , 5904234568 , 1987-06-21 , 'IT_PROG' , 6000.00 , 0.00 , 103 , 60 );
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values ( 105 , 'David' , 'Austin' , 'DAUSTIN' , 5904234569 , 1987-06-22 , 'IT_PROG' , 4800.00 , 0.00 , 103 , 60 );
insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMISSION_PCT,MANAGER_ID,DEPARTMENT_ID) values (  106 , 'Valli' , 'Pataballa' , 'VPATABAL' , 5904234560 , 1987-06-23 , 'IT_PROG' , 4800.00 , 0.00 , 103 , 60 );
SELECT first_name, last_name, department_id, department_name 
FROM employees 
JOIN departments USING (department_id);