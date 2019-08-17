public class soqlquery {
    
    public list<contact> conlist{get;set;}
    public list<account> acclist{get;set;}
    
    public soqlquery(){
        conlist = [select lastname,firstname,account.name,account.type from contact];
        acclist=[select name,type,industry,(select lastname,firstname,email from contacts) from account];
        
        for (account a :acclist){
            for (contact c :a.contacts){
                system.debug('c.lastname'+c.lastname);
            }
    }
    }
}