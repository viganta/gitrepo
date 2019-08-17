public class ContactListController {
    
    @AuraEnabled
    public static list<Contact> getContactList (String accountId){
        List<Contact> contactList = new List<Contact>([Select Id,FirstName,LastName,Email,Phone from Contact 
                                                       Where Email != null and AccountId =: accountId]);
        return contactList;
    }

}