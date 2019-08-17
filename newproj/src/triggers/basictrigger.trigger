trigger basictrigger on Account (after update) {
    
    for (Account a :Trigger.new){
        system.debug('the new' + a.Name);
    }
    for (Account a :Trigger.old){
        system.debug('the new' + a.Name);
    }
     for (Account a :Trigger.newMap.values()){
        system.debug('the new' + a.Name);
    }
     for (Account a :Trigger.oldMap.values()){
        system.debug('the new' + a.Name);
    }
}