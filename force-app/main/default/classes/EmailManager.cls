public class EmailManager {

    public static void sendMail(String ad, string sub, String body){
        Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
        String[] toAddress =  new String[] { ad};
            mail.setToAddresses(toAddress);
        mail.setSubject(sub);
        mail.setPlainTextBody(body);
        Messaging.SendEmailResult[] ressults = Messaging.sendEmail(new Messaging.SingleEmailMessage[]{ mail});
       // inspectResults(ressults);
        
    }
    
    
}