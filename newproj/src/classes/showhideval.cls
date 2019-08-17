public class showhideval {
    public boolean showa{get;set;}
    public boolean showb{get;set;}
    public boolean showab{get;set;}
    public showhideval()
    {
    showa=false;
    
    }
    public void blocka  (){
        showa=!showa;
    }
        public void blockb  (){
        showb=true;
    }
        public void blockc  (){
        showab=true;
    }

}