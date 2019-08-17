public class DisplayTypeNul {

    public List<account> acclist {get;set;}
    
    public DisplayTypeNul (){
        acclist =[select name,industry,type from account where type = null];
    }
    }