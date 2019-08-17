({
	doclick : function(component, event, helper) {
        
        var childcomp= component.find('childComp');
		var retmsg=childcomp.child('I am in Parent controller');
        alert("in parent");
        component.set("v.message" , retmsg);
	},
	handleclick : function(component, event, helper) {
        

        alert("in parent1");

	}
})