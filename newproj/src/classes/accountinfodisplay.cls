public class accountinfodisplay {
    
    public List<account> acclist {get;set;}
    
    public accountinfodisplay (){
        acclist =[select name,industry,type from account];
    }
    
    public void fetchaccwithtype(){
        acclist =[select name,industry,type from account where type != null];
    } 
    public pageReference fetchaccstypenull(){
        
        pagereference p = page.DisplayTypeNul;
        p.setRedirect(true);
        return p;
        //acclist =[select name,industry,type from account where type = null];
    }
    
}