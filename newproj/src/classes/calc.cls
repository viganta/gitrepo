public class calc {
    public integer x{get;set;}
    public integer y{get;set;}
    public integer z{get;set;}
    public boolean flag{get;set;}
    public calc()
    {x=2;
     y=3;
     add();
    }
    public void add  (){
        flag=true;
        z=x+y;
    }

}