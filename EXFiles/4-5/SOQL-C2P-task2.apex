//--------------------------------------------------------------------------------------------
//  TASK 2:  Write Apex to create a for loop with an iterator of type List whose elements are of
//           class Contact named contacts that iterates over the SOQL query you completed in Task 1.
//           Within the SOQL loop create a second for loop with an iterator of type Contact named aContact
//           that iterates over the outer loop's contacts variable.  Within the inner loop use a System.debug
//           to output the information you have retrieved.
//  Example of output: "Contact: Erica Neumann is related to the following Account: Initron Corporation"
//--------------------------------------------------------------------------------------------

for ( List<Contact> contacts: [SELECT Name, Account.Name FROM Contact]/* TODO: replace this comment with iterator over SOQL query of Contacts from Task 1 */ ) {
    for (Contact c : contacts/* TODO: replace this comment with iterator over the lhe loop variable from outer loop */ ) {
        //TODO: make the statement below dynamic
        System.debug('Contact:'+ c.Name+'is related to the following Account: Initron Corporation'+ c.Account.Name);
    }
}
