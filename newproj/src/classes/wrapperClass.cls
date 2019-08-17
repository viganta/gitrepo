public with sharing class wrapperClass{

    public wrapperClass (){
        CountTotalRecords= [select count() from Account];
    }

    public Integer CountTotalRecords{get;set;}
    public Integer OffsetSize = 0;
    private Integer QueryLimit = 5;
    

    public list<Account> getAccounts(){
         List<Account> lstAccount = new list<Account> ();
        lstAccount = [Select id, Name, BillingCity, BillingState, Phone from Account order by Name limit :QueryLimit offset :OffsetSize];
        return lstAccount;
    }

    public Boolean getDisablePrevious(){
        if(OffsetSize>0){
            return false;
        }
        else return true;
    }

    public Boolean getDisableNext() {
        if (OffsetSize + QueryLimit < countTotalRecords){
            return false;
        }
        else return true;
    }

    public PageReference Next() {
        OffsetSize += QueryLimit;
        return null;
    }

    public PageReference Previous() {
        OffsetSize -= QueryLimit;
        return null;
    }
}