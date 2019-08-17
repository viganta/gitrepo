({
	doInit : function(component, event, helper) {
        
        var action = component.get('c.getContactList');
      action.setParams({
          accountId : component.get('v.recordId')
            
        }); 
        action.setCallback(this, function(response){
             var responseValue = response.getReturnValue();
    		  console.log('responsevalue', responseValue);
              component.set('v.contactList', responseValue);
        });
    	$A.enqueueAction(action, false);	
	},
    doRedirect : function(component, event, helper){
        var eventSource = event.getSource();
        var id = eventSource.get('v.name');
        alert(id);
    }
    
})