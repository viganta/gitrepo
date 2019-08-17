public class RelationshipSOQLCtrl {
    
    public List<Contact> conList{get;set;}
    public  RelationshipSOQLCtrl() {
        
   conList =[select Id,LastName,FirstName,Email,Account.Name,Account.Type,Account.Industry From Contact];

}
}