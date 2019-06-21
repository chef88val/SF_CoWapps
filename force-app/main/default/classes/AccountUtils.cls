public class AccountUtils {

    public static List<Account> accountsByState (String abre){
        List<Account> temp =  [SELECT id, name from account where BillingState =: abre];
        return temp;
    }
}