({
	packItem  : function(component, event, helper) {
		component.set("v.item.Packed__c", true);
        console.log("packITem");
        event.getSource().set("v.disabled",true);
	}
})