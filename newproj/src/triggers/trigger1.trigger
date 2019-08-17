trigger trigger1 on Account (after update) {
    
    set<id> ids =new set<id>();
      for (Account acc : Trigger.new) {
         ids.add(acc.id);
      }
 
        map<id,contact> con = new map<id,contact>( [SELECT Id, lastName,phone
                                 FROM contact where accountid in :ids]);
    system.debug('con' + con) ; 
   for (Account acc : Trigger.new) {
   
	 system.debug('phone' + con.get(acc.id).AssistantPhone) ; 
     con.get(acc.id).AssistantPhone=acc.phone;
  }
}