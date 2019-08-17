({
	show : function(component, event, helper) {
        helper.fun(component,event);
		
	},
    display : function(component, event, helper) {
            var button1=event.getSource();
        var label1=button1.get("v.label");
        
        var newlavl="you have invoked action on " + label1;
        component.set("v.message",newlavl);
		
	}
})