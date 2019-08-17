public class w1 {
    
   public list<wrapper> wrapAccountList {get;set;}
   public list<account> selectedAccounts {get;set;}
    
    public w1(){
            wrapAccountList = new list<wrapper>();
        for (account accc:[select id,name,Billingstate,Phone from account]){
            wrapAccountList.add(new wrapper(accc));
        }
    }
    
    public void selected (){
        selectedAccounts = new list<account> ();
        for (wrapper w2 :wrapAccountList){
            if (w2.selected==true){
                selectedAccounts.add(w2.acc);
            }
        }
    }    
        
        
        public class wrapper{
           public Account acc {get;set;}
            public Boolean selected {get;set;}
            
            public wrapper(account accc){
                acc=accc;
                selected=false;
            }     
        }
}