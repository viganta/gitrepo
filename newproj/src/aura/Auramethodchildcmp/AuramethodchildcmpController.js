({
	handlechild : function(component, event, helper) {
		var parameter = event.getParam('arguments');
        if (parameter){
            var param1= parameter.param1;
            return "##### Hello "+param1+" From Child Component #####";
        }
        return"";
	}
})