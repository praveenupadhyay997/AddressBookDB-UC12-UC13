/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
 /* Adding the columns for address book name and type of address book 
 to the address book table */
 alter table addressBook_Table
 add addressBookType varchar(30), addressBookName varchar(40);
 /* Update the address book to add records in the recent added fields*/
 update addressBook_Table set addressBookType = 'Friends' where city ='Delhi';
 /* Update the address book to add records in the recent added fields*/
 update addressBook_Table set addressBookName = 'PraveenRecords';
 /* Update the address book to add records in the recent added fields*/
 update addressBook_Table set addressBookType = 'Family' where secondName ='Upadhyay';
 /* Update the address book to add records in the recent added fields*/
 update addressBook_Table set addressBookType = 'Profession' where addressBookType is null;
