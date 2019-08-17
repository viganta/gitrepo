public class AccountSelectClassController{
 
    //Our collection of the class/wrapper objects wrapAccount 
    public List<wrapAccount> wrapAccountList {get; set;}
    public List<Account> selectedAccounts{get;set;}
     
    public AccountSelectClassController(){
        if(wrapAccountList == null) {
            wrapAccountList = new List<wrapAccount>();
            for(Account a: [select Id, Name,BillingState, Website, Phone from Account limit 10])
                for (Contact c: [select name from Contact where ID= :a.Id])
            
            
            {
                // As each Account is processed we create a new wrapAccount object and add it to the wrapAccountList
                wrapAccountList.add(new wrapAccount(a.Name,a.BillingState,a.Website,c.Name));
            }
        }
    }
 
    public void processSelected() {
    selectedAccounts = new List<Account>();
 
        for(wrapAccount wrapAccountObj : wrapAccountList) {
            if(wrapAccountObj.selected == true) {
              //  selectedAccounts.add(wrapAccountObj.acc);
            }
        }
    }
 
 
    // This is our wrapper/container class. A container class is a class, a data structure, or an abstract data type whose instances are collections of other objects. In this example a wrapper class contains both the standard salesforce object Account and a Boolean value
    public class wrapAccount {
        public string aName  {get; set;}
         public string BillingState  {get; set;}
         public string Website  {get; set;}
         public string cName  {get; set;}
        public Boolean selected {get; set;}
 
        //This is the contructor method. When we create a new wrapAccount object we pass a Account that is set to the acc property. We also set the selected value to false
        public wrapAccount(string aName,string BillingState,string Website,string cName) {
            selected = false;
        }
    }
}