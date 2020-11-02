/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
 /* Inserting data into the table*/
 insert into addressBook_Table (firstName, secondName, address, city, state, zip, phoneNumber, emailId)
 values
 ('Divya', 'Upadhyay', 'Sec-1', 'Gorakhpur', 'UP', 941144552, 214336, 'divya@gmail.com'),
 ('Dheeraj', 'Sharma', 'Sec-2', 'Delhi', 'Delhi', 991144552, 211136, 'dheeraj@gmail.com'),
 ('Shubham', 'Nehra', 'Sec-3', 'Kanpur', 'UP', 954684552, 217336, 'shubham@gmail.com'),
 ('Raj', 'Baisla', 'Sec-4', 'Hisar', 'Haryana', 969684552, 217336, 'raj@gmail.com');
 
 