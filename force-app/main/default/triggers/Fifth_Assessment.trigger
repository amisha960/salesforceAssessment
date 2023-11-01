trigger Fifth_Assessment on New_Lead_Event_e__e (after insert) {
    List<Lead> toUpdateLeadList = new List<Lead>();

        for(New_Lead_Event_e__e event: Trigger.New)
        {
            Lead leadObj = new Lead();
            leadObj.FirstName = event.FirstName__c;
            leadObj.LastName = event.LastName__c;
            leadObj.Email = event.Email__c;
            leadObj.Company = 'CK';
            leadObj.Status = 'Working - Contacted';
            toUpdateLeadList.add(leadObj);
        }
      if(!toUpdateLeadList.isEmpty())
      {
          insert toUpdateLeadList;
      }


}