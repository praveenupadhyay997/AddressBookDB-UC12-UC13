/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
/* Adding a contact to multiple contact Type require duplication of contact
if we do not use Normalcy or Entity-Relationship Concept leading to data redundancy 
Adding contact named alka as friends and family*/
insert into addressBook_Table (firstName, secondName, address, city, state, phoneNumber, zip, emailId, contactType, addressBookName)
values
('Alka', 'Shirorkar', 'Sec-4', 'Delhi', 'Delhi', 971144552, 210689, 'alka@gmail.com', 'Family', 'PraveenRecords');
/* Displaying the data redundancy through a query */
 select * from addressBook_Table
 where firstName ='Alka' and secondName = 'Shirorkar';