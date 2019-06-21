trigger ClosedOpportunityTrigger on Opportunity (after insert, after update)
{
    
    List<Task> taskListToInsert = new List<Task>();
    
    for(Opportunity o: Trigger.new)
    {
        if(Trigger.isInsert){
            if(o.StageName=='Closed Won')
            {
                Task t= new Task();
                t.Subject='Follow Up Test Task';
                t.WhatId=o.Id;
                taskListToInsert.add(t);
            }
        }
        if(Trigger.isUpdate){
            if(o.StageName=='Closed Won' && o.StageName != Trigger.oldMap.get(o.Id).StageName)
            {
                Task t= new Task();
                t.Subject='Follow Up Test Task';
                t.WhatId=o.Id;
                taskListToInsert.add(t);
            }
        }
        
    }
    
    if(taskListToInsert.size() > 0){
        insert taskListToInsert ;
    }
    
}