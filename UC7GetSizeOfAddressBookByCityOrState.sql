/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the row - column records from the address book table */
 select * from addressBook_Table;
 /* displaying the count of contacts by city*/
 select city,count(*) as 'Number of Contacts'
  from addressBook_Table 
  group by city;
   /* displaying the count of contacts by state*/
 select state,count(*) as 'Number of Contacts'
  from addressBook_Table 
  group by state;