public class soql {
    public string city ='austin';
    public boolean show {get;set;}
      public list<account> acclist{get;set;}
    
        public soql  (){ 
        acclist=[select id,name,phone,fax from account ];

}
    
    public void sqql  (){ 
        acclist=[select id,name,phone,fax from account where billingcity =:city];

}
    
       public void fetchfirstfive  (){ 
        acclist=[select id,name,phone,fax from account order by name offset 5];

}
    }