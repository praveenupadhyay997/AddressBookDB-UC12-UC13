/* Invoking the Address Book Database */
use addressBook_services;
/* Create table for the basic rdbms layout 
 and perform the CRUD operations*/
create table addressBook_Table
( firstName varchar(50) not null,
 secondName varchar(50) not null,
 address varchar(50) not null,
 city varchar(50) not null,
 state varchar(50) not null,
 zip bigint not null,
 phoneNumber bigint not null,
 emailId varchar(50) not null);
 select * from addressBook_Table;