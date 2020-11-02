/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
 /* Delete the row entry from the address book table where name matches */
 delete from addressBook_Table where firstName ='Dheeraj' and secondName = 'Sharma';