trigger duplicitycheck on Contact (before insert ,after insert) {
    
    if(Trigger.isInsert){
        if(Trigger.isAfter){
            List<Consultant__c> consultant = new List<Consultant__c>();
            for(Contact con : trigger.new){
                consultant__c cons = new consultant__c();
                cons.name=con.lastname+con.firstname;
                consultant.add(cons);
            }
                
        }
    }
    
       if(Trigger.isInsert){
        if(Trigger.isBefore){
    list<Contact> con =[select Id,LastName from Contact];
    
    map<String,Contact> mapoldcon = new  map<String,Contact>();
    
    for (Contact c : con){
        mapoldcon.put(c.lastname, c);
    }
    for (Contact connew : Trigger.new){
/*        for (Contact conold : con){ */
            if (mapoldcon.containskey(connew.LastName)){
                connew.addError('The contact '+ connew.LastName+ 'already exists ');
            }
        }
    }
       }
}