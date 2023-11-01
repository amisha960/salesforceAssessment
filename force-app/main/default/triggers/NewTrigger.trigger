trigger NewTrigger on Case (after insert) {
    List<Task> ts = new List<Task>();
    Integer i = 1;
    for(Case c : trigger.new)
    {
        if(c.priority == 'High')
        {
            Task t = new Task();
            t.subject = 'task'+i;
            t.Status = 'Not Started';
            t.Priority = 'high';
            i++;
            ts.add(t);
        }
    }
    insert ts;
    
}