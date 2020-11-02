/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
 /* Displaying the columns from the contact type table */
 select * from contact_type;
 /* Displaying the columns from the address book table */
 select * from address_Book;
 /* Displaying the columns from the address detail table */
 select * from address_Detail;
/* Create contact type table for the basic rdbms layout*/
create table contact_type
( contactType varchar(50),
contactId int not null); 
/* Create address Book table for the basic rdbms layout*/
create table address_Book
( addressBookName varchar(50),
 contactId int not null);
/* Create address Detail table for the basic rdbms layout*/
create table address_Detail
( contactId int, city varchar(50) not null, 
state varchar(50) not null, address varchar(50) not null);
/* Adding a primary key as customer id auto generated */
alter table addressBook_Table add contactId int not null identity(1000,1) primary key;

/*Insert into the address detail table */
insert into address_Detail
values (1000, 'Gorakhpur', 'UP', 'Sec-1'), (1001, 'Delhi', 'Delhi', 'Sec-2'),
(1002, 'Kanpur', 'UP', 'Sec-3'), (1003, 'Hisar', 'Haryana', 'Sec-4'),
(1004, 'Delhi', 'Delhi', 'Sec-5'), (1005, 'Delhi', 'Delhi', 'Sec-6'),
(1006, 'Delhi', 'Delhi', 'Sec-4');

/*Insert into the address book table */
insert into address_Book(contactId, addressBookName)
values (1000, 'PraveenRecord'), (1001, 'PraveenRecord'),
(1002, 'PraveenRecord'), (1003, 'PraveenRecord'),
(1004, 'PraveenRecord'), (1005, 'PraveenRecord'),
(1006, 'PraveenRecord');

/*Insert into the contact type table */
insert into contact_type(contactId, contactType)
values (1000, 'Family'), (1001, 'Friends'),
(1002, 'Profession'), (1003, 'Profession'),
(1004, 'Friends'), (1005, 'Friends'),
(1006, 'Friends'),(1001, 'Family');

/* Removing the data Redundancy for now */
delete from addressBook_Table where contactId = 1007;

/* UC-6 -- Displaying the contact from the address book table matching the city OR state */
select contact.firstName, contact.secondName, contact.phoneNumber, contact.emailId, 
location.address, location.city, location.state, location.zip, book.addressBookName, type.contactType
from addressBook_Table contact, address_Book book, address_Detail location, contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
and (state = 'UP' or city = 'Hisar');
/* UC-7 -- displaying the count of contacts by city */
select location.city, count(distinct(contact.firstName)) as 'Count By City'
from addressBook_Table contact, address_Book book, address_Detail location, contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
group by location.city;
/* UC-7 -- displaying the count of contacts by state */
select location.state, count(distinct(contact.firstName)) as 'Count By State'
from addressBook_Table contact, address_Book book, address_Detail location, contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
group by location.state;
/* UC8 -- Sorting alphabetically in ascending order by the name and belonging to a city say delhi*/
select contact.firstName, contact.secondName, contact.phoneNumber, contact.emailId, 
location.address, location.city, location.state, location.zip, book.addressBookName, type.contactType
from addressBook_Table contact, address_Book book, address_Detail location, contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId
and location.city = 'Delhi'
order by contact.firstName;
/* UC10 -- Getting the contact count grouping by the contact type */
select type.contactType, COUNT(*) as 'Number Of Contacts'
from addressBook_Table contact, address_Book book, address_Detail location, contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId
group by type.contactType; 