({
packItem : function(component, event, helper) {
        var checkbox = component.get("v.item.Packed__c");
          checkbox.Packed__c = true;
        component.set("v.item", checkbox);
        var buttonclicked=event.getSource();
        buttonclicked.set("v.disabled","true");	
	}
})