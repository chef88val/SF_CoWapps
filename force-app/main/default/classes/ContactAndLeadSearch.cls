public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String p1){
        Contact c = new Contact(LastName='Smith');insert c;
        Lead l = new Lead(LastName='Smith', Company='this'); insert l;
        List<List<sObject>> searchList = [FIND 'Smith' IN ALL FIELDS RETURNING CONTACT(lastName),LEAD(lastName)];
//Contact[] searchContact = (Contact[]) searchList[0];
//Lead[] searchLead = (Lead[]) searchList[1];
//System.debug(searchContact);
//System.debug(searchLead);
system.debug(searchList);
return searchList;
            }

}