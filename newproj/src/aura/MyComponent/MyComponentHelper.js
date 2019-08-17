({
	fun : function(component,event) {
		        var button1=event.getSource();
        var label1=button1.get("v.label");
        
        var newlabl="you have invoked action on " + label1;
        component.set("v.message",newlabl);
	}
})