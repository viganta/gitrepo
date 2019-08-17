trigger hyderabadTrigger on Account (before Insert,before update) {
     if(trigger.isBefore){
       if(trigger.isInsert){
     for (Account acc:trigger.new){
        acc.BillingCity='Austin';
        }
}
}
     if(trigger.isBefore){
       if(trigger.isUpdate){
     for (Account acc:trigger.new){
        if(acc.BillingCity=='Austin'){
        acc.Phone='998877665544';
        }
        }
}
}
}