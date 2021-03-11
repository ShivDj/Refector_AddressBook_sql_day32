USECASE_1
[Ability to create aAddress Book Service DB]

create AddressBookService;
use AddressBookService;

-----------------------------------------------------------------------------------------------------------------------------------------

USECASE_2
[Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes]

create table addressbook(
	id integer primary key auto_increment,
	first_name varchar(20), 
	last_name varchar(20),
	state varchar(30),
	city varchar(20),
	zipcode varchar(10),
	phonenumber varchar(20),
	email varchar(30) 
	);
show tables;
select * from addressbook;

--------------------------------------------------------------------------------------------------------------------------------------------

#USECASE_3
[Ability to insert new Contacts to Address Book]

select * from addressbook;
insert into 
	addressbook 
	values
	(1,'rishikesh','abc','maharastra','mumbai','233445','7879560077','shivdj.singh78@gmail.com');

insert into addressbook
	(first_name,last_name,state,city,zipcode,phonenumber,email) 
values
	('Imran','khan','maharastra','mumbai','677889','7000717897','sheevendra.singhraul@gmail.com');

-------------------------------------------------------------------------------------------------------------------------------------------

USECASE_4
[Ability to edit existing contact person using their name]

UPDATE 
	addressbook 
	set first_name =
	'mouna',last_name='cdef',city='bhopal' where first_name = 'pranil';

select * from addressbook;

-------------------------------------------------------------------------------------------------------------------------------------------

USECASE_5
[Ability to delete a person using person name]

delete from addressbook where first_name='pranil';
select * from addressbook;

--------------------------------------------------------------------------------------------------------------------------------------------

USECASE_6
[Ability to Retrieve Person belonging to a City or State from the Address Book]

select 
	first_name as FIRST,last_name AS LAST 
	from 
	addressbook where city='mumbai';

select 
	first_name as FIRST,last_name AS LAST 
	from addressbook where state='maharastra'

select * from addressbook;

--------------------------------------------------------------------------------------------------------------------------------------------

USECASE_7
[Ability to understand the size of address book by City and State]

select 
	count(city) as numberOfCIty ,
	count(state) as numberOFState 
	from addressbook;

-------------------------------------------------------------------------------------------------------------------------------------------
USECASE_8
[Ability to retrieve entries sorted alphabetically by Person’s name for a given city]



