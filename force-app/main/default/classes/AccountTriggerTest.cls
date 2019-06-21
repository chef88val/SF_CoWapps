@isTest
public class AccountTriggerTest {
    @isTest static void test_AccountTriggerTest_OK(){
        List<account> temp = new List<Account>();
        for(integer i=0;i<200;i++){
            temp.add(new Account(Name='name'+i, BillingState='CA'));
        }
        
        Test.startTest();
    insert temp;
    Test.stopTest();
         List<Account> updatedAccounts = [SELECT Name, BillingState, ShippingState FROM Account WHERE BillingState = 'CA'];
    for(Account acct : updatedAccounts) {
        System.assertEquals(200, updatedAccounts.size());
    }  
    }
    @isTest static void test_AccountTriggerTest_error(){}
}