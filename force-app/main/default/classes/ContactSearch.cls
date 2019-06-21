public class ContactSearch {
    public static Contact[] searchForContacts(String p1, string p2){
       Contact[] query = [
           SELECT ID, Name, lastName, MailingPostalCode from Contact where lastName=:p1 and MailingPostalCode=:p2];
           System.debug((Contact)query[0]);
           return query;
    }
    

    // SELECT ID,Name from Contact c where  c.last_name =: p1 and c.MailingPostalCode =: p2

}