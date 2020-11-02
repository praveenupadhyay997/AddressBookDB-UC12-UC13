/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
/* Updating the row contact detail from the address book table finding by the contact name  */
update addressBook_Table set address = 'Sec-2' 
where firstName = 'Divya' and secondName = 'Upadhyay';