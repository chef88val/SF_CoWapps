public class AccountHandler {
    public static Account insertNewAccount(String text){
       try {
           Account account = new Account();
           account.Name = text;
        System.debug(account);
		insert account;     
        return account;
    
        } catch (DmlException e) {
    System.debug('A DML exception has occurred: '+  e.getMessage());
            return null;
}}}