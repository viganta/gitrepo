public class AccSoqlController {
    
    public List<Account>  acclist {get;set;}
    
    public AccSoqlController(){
        acclist =[select name,Industry,Type from Account];
    }
    

}