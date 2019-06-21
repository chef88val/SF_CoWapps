public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acc){
        List<Account> tempToInsert = new List<Account>();
        for(Account ac :acc){
            if(ac.BillingState  != ac.ShippingState)
                ac.ShippingState  = ac.BillingState;
        }
            
        
    }
}