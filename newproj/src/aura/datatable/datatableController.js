({
	doInit : function(component, event, helper) {
                var actions = [
            { label: 'Show details', name: 'show_details' },
            { label: 'Delete', name: 'delete' }
        ];
        component.set('v.columns', [
            {type:  'action', typeAttributes: { rowActions: actions } },
            {label: 'Account name', fieldName: 'Name', type: 'text',editable:true},
             {label: 'Industry', fieldName: 'Industry', type: 'text'},
             {label: 'Rating', fieldName: 'Rating', type: 'text'},
             {label: 'Phone', fieldName: 'Phone', type: 'phone'}
          
        ]);
        
        var action =component.get('c.fetchaccount');
        action.setCallback(this, function(response){
            var state = response.getState();
            if (state == 'SUCCESS' || state == 'DRAFT'){
                var responseValue = response.getReturnValue();
                component.set('v.data' , responseValue)    
            }	
});
        $A.enqueueAction(action);
    },
    doSelectRecord : function(component, event, helper) {
      var sel = event.getParam('selectedRows');
    },
    handleRowAction: function (cmp, event, helper) {
        var action = event.getParam('action');
        var row = event.getParam('row');
        console.log('action' , action.name);
        alert('in handle');
        switch (action.name) {
            case 'show_details':
                alert(row.Id +' '+row.Name);
                break;
            case 'delete':
                var data = cmp.get('v.data');
                var rowIndex = data.indexOf(row);
                data.splice(rowIndex, 1);
                cmp.set('v.data', data);
                break;
        }
    },
        onSave : function(cmp, event, helper) {
      var sel = event.getParam('draftValues');
                    var action = cmp.get("c.updateAccount");
        action.setParams({"acc" : sel});
        action.setCallback(this, function(response) {
            var state = response.getState();
            $A.get('e.force:refreshView').fire();
            
        });
        $A.enqueueAction(action);
    },
});