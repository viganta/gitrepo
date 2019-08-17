public class Dynamicsoql {
    public string toaddress{get;set;}
    public string subjectstring{get;set;}
    public string textareaBig{get;set;}
    public pagereference senEmail(){
        list<String> toaddressList = new List<String>();
        for (string str:toaddress.split(';')){
            toaddressList.add(str);
        }
    messaging.SingleEmailMessage msg=new messaging.SingleEmailMessage();
        msg.setToAddresses(toaddressList);
        msg.setSubject(subjectstring);
        msg.setPlainTextBody(textareaBig);
        list<messaging.SingleEmailMessage> mail=new list<messaging.SingleEmailMessage>();     
       mail.add(msg);
        messaging.sendEmail(mail);
        return null;
    }

}