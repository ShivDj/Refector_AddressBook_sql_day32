#USECASE_1 
[IN THIS SQL QUERY I CREATE A DATABASE NAMED PAYROLL_SEVECE, LIST IT, AND USED IT]

create database payroll_service;
show databases;
use payroll_service;

-----------------------------------------------------------------------------------------------------------------------------------------

#USECASE_2
[CREATE A TABLE NAMED EMPLOYEE_PAYROLL AND CREATED FOUR COLUMNS ID,NAME,SALARY AND START DATE]

use payroll_services; 
create table employee_payroll(
	id int not null primary key auto_increment, 
	name varchar(30),
	salary double, 
	start date
	);

select * from employee_payroll;

--------------------------------------------------------------------------------------------------------------------------------------------

#USECASE_3
[IN THIS SQL QUERY THREE DATA RECORDS ARE INSERTED USING INSERT AND VALUE PAIR]

insert into employee_payroll values(1,'ankita',40000,'0212-02-18');
insert into employee_payroll values(2,'shiv',12000,'2013-02-21');
insert into employee_payroll (name,salary,start) values('pranil',230000,sysdate());


--------------------------------------------------------------------------------------------------------------------------------------------

#USECASE_4
[IN THIS USECASE we use payroll_sevices and select statement is used to fetech all data from epmloyee_payroll table]

use payroll_services; 
select * from employee_payroll;


--------------------------------------------------------------------------------------------------------------------------------------------

#USECASE_5
[Ability to retrieve salary data for a particular employee as well as all employees who have joined in a particular data range from the
payroll service database]

use payroll_services; 
select * from employee_payroll;
insert into employee_payroll (name,salary,start) values('Bill',250000,sysdate());

SELECT name from employee_payroll 
	WHERE start 
		between cast( '2013-02-21' as date) AND date (now()) ;


--------------------------------------------------------------------------------------------------------------------------------------------

#USECASE_6
[Ability to find sum, average, min, max and number of male and female employees]

use payroll_services; 
alter table employee_payroll add Gender varchar(10)  after name; 

UPDATE employee_payroll set Gender =
'Male' where name = 'Bill' or name =
'pranil' or name ='shiv';

UPDATE employee_payroll set Gender =
'feMale' where name = 'ankita' or name = 'shravni';
select * from employee_payroll;


--------------------------------------------------------------------------------------------------------------------------------------------

#USECASE_7
[Ability to find sum, average, min, max and number of male and female employees]

use payroll_services; 
SELECT  sum(salary) as sum_of_salary_male from employee_payroll where  Gender = 'male'group by Gender;
SELECT  sum(salary) as sum_of_salary_female from employee_payroll where Gender = 'female'group by Gender;

select max(salary) as MAX_of_salary_male from employee_payroll where gender='male' group by Gender;
select max(salary) as max_of_salary_female from employee_payroll where gender='female' group by Gender;

select min(salary) as MAX_of_salary_male from employee_payroll where gender='male' group by Gender;
select min(salary) as max_of_salary_female from employee_payroll where gender='female' group by Gender;

select avg(salary) as MAX_of_salary_male from employee_payroll where gender='male' group by Gender;
select avg(salary) as max_of_salary_female from employee_payroll where gender='female' group by Gender;

select count(salary) as countt from employee_payroll where gender='male' group by gender;
select count(salary) as countt from employee_payroll where gender='male' group by gender;

select * from employee_payroll;

--------------------------------------------------------------------------------------------------------------------------------------------

USECASE_8
[Ability to extend employee_payroll data to store employee information like employee phone, address]

create table dept (
	dept_id int primary key,
    dept_name varchar(30) not null,
    employee_id int, 
    foreign key(employee_id) references employee_payroll(id) 
    );


alter table employee_payroll 
	add  address varchar(30) after salary;
    
alter table employee_payroll 
	add  phone_no int after address;

update employee_payroll set address='odisha',phone_no=1223344556 where name='ankita' ;

update employee_payroll set address='satna',phone_no=1879560076 where name='shiv' ;

update employee_payroll set address='rewa',phone_no=379560076 where name='pranil' ;
update employee_payroll set address='hybd',phone_no=1879560076 where name='shravani' ;

update employee_payroll set address='pune',phone_no=1079560076 where name='Bill' ;

insert into dept (dept_id,dept_name,employee_id) values(1,'hr',5) ,(2,'r&d',4),(3,'dev',3),(4,'test',2),(5,'cloud',1);

select 
	employee_payroll.name,employee_payroll.salary,dept.dept_name
	from employee_payroll
	inner join dept on employee_payroll.id= dept.employee_id
	order by employee_payroll.salary;

select * from dept;
select * from employee_payroll;

------------------------------------------------------------------------------------------------------------------------------------------

USECASE_9

[Ability to extend employee_payroll table to have Basic Pay,Deductions, Taxable Pay,Income Tax, Net Pay]

insert into earning (
	id ,basic_pay,deduction,taxable_pay,tax,employee_id) 
	values
        (1,20202,200,10000,540,1),
        (2,232,100,12000,440,2),
        (3,34202,250,9000,140,3),
        (4,36202,300,3000,840,4),
        (5,23202,1200,12000,240,5);
        
------------------------------------------------------------------------------------------------------------------------------------------
USECASE_10
[Ability to make Terissa as part of Sales and Marketing Department]

insert 
	into employee_payroll 
	values(6,'Terrisa','female',90000,'america',233445,'2009-04-09');

insert 
	into earning 
	values(6,78900,3400,11000,3445,6);

select 
	employee_payroll.name,employee_payroll.salary,dept.dept_name
	from employee_payroll
	inner join dept on employee_payroll.id= dept.employee_id
	order by employee_payroll.salary;








