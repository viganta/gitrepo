public class dynamicsqol {
    
    public String optyname{get;set;}
    public String optystage{get;set;}
    public List<Opportunity> optylist{get;set;}
    
    public void fecthopty(){
        
        String QueryVal='Select Name,StageName,CloseDate from opportunity';
        if(!string.isBlank(optyname) && !string.isBlank(optystage)){
            QueryVal = QueryVal +  ' Where Name = \''+ optyname + '\' AND stagename= \''+ optystage + '\'';
        }
        else{
            
      
        optylist = Database.query(QueryVal);
         } 
    }

}