trigger contactTrigger on Account (after Insert,after Update) {
     if(trigger.isAfter){
       if(trigger.isInsert){
       Contact[] cont= new List<Contact>();
     for (Account acc:trigger.new){
         Contact c = new Contact(lastName=acc.Name,phone=acc.Phone);
          cont.add(c);
        }
        insert cont;
}
}
     if(trigger.isAfter){
       if(trigger.isUpdate){
       
       List<Contact> cont= new List<Contact>();

     for (Account acc:trigger.new){
    cont =
        [SELECT Mailingcity,Phone FROM Contact
         WHERE  Accountid=:acc.id];
         for (Contact contlist:cont){
         contlist.Mailingcity = acc.BillingCity;
         contlist.Phone = acc.Phone;
        }
}
}
}
}