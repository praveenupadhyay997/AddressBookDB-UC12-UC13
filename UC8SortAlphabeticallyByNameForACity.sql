/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
 /* Inserting  more data into the table*/
 insert into addressBook_Table (firstName, secondName, address, city, state, zip, phoneNumber, emailId)
 values
 ('Alka', 'Shirorkar', 'Sec-4', 'Delhi', 'Delhi', 971144552, 210689, 'alka@gmail.com'),
 ('Dheeraj', 'Sharma', 'Sec-2', 'Delhi', 'Delhi', 991144552, 211087, 'dheeraj@gmail.com'),
 ('Subramaniam', 'Pal', 'Sec-7', 'Delhi', 'Delhi', 904684552, 217889, 'subrapal@gmail.com'),
 ('Vineet', 'Godara', 'Sec-8', 'Delhi', 'Delhi', 969684552, 210542, 'raj@gmail.com');
 /* Sorting alphabetically in ascending order by the name and belonging to a city say delhi*/
 select * from addressBook_Table
 where city = 'Delhi'
 order by firstName;