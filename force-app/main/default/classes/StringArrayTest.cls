public class StringArrayTest {
    public static String[] generateStringArray (Integer n){
        String[] result = new String[]{};
        for(Integer i = 0; i<n; i++){
            result.add('Test '+ i);
        }
               
        return result;
        
    }
    public void getID(){
        // Create the account sObject 
Account acct = new Account(Name='Acme', Phone='(415)555-1212', NumberOfEmployees=100);
// Insert the account by using DML
insert acct;
// Get the new ID on the inserted sObject argument
ID acctID = acct.Id;
// Display this ID in the debug log
System.debug('ID = ' + (ID) acct.id);
// Debug log result (the ID will be different in your case)
// DEBUG|ID = 001D000000JmKkeIAF
    }
}