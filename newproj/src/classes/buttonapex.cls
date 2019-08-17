public class buttonapex {
    public boolean showa{get;set;}
    public boolean showb{get;set;}
    public void blocka  (){
        Account acc = new Account(name = 'dest3',phone = '1234');
        insert acc;
        showa=true;
    }
        public void blockb  (){
            Account acc = new Account(name = 'dest4',phone = '1234');
			insert acc;
			Contact con = new Contact();
			con.lastname = acc.name;
			con.department = 'IT';
			con.Accountid = acc.id;    
			insert con;	
        showb=true;
    }
}