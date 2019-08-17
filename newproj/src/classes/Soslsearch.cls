public class Soslsearch {
    
    public String name {get;set;}
    public list<account> acclist {get;set;}
    public list<contact> conlist {get;set;}
    public list<opportunity> optylist {get;set;}
    public void fecthrec() {
        
        List<List<sobject>> sObjectList = Search.query('FIND \'' +name+ '\' IN ALL FIELDS RETURNING Account(Name,Type,Industry),Contact(firstname,lastname,email),Opportunity(name,stagename,closedate)');
		acclist=sObjectList[0];
        conlist=sObjectList[1];
        optylist=sObjectList[2];                                               
  }
 }