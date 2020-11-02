/* Invoking the Address Book Database */
use addressBook_services;
/* Displaying the columns from the address book table */
 select * from addressBook_Table;
 /* Renaming the addressBookType columns to contactType in the address book table */
EXEC sp_rename 'addressBook_Table.addressBookType', 'contactType', 'COLUMN';
/* Getting the contact count grouping by the contact type */
select contactType, COUNT(*) as 'Number Of Contacts'
from addressBook_Table group by contactType;