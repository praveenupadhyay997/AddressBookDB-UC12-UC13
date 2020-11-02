/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the row - column records from the address book table */
 select * from addressBook_Table;
 /* Displaying the contact from the address book table matching the city */
  select * from addressBook_Table
  where city = 'Hisar';
  /* Displaying the contact from the address book table matching the state */
  select * from addressBook_Table
  where state = 'UP';
  /* Displaying the contact from the address book table matching the city OR state*/
  select * from addressBook_Table
  where state = 'UP' or city = 'Hisar';