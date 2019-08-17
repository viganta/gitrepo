public class datatableaura {
    @AuraEnabled
    public static List<Account> fetchaccount() {
        return [select Id, Name,Industry,Rating,Phone from Account];
    }
        @AuraEnabled
    public static void updateAccount(List<Account> acc ){
        update acc;
    }

}