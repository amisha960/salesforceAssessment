public class ApexTraining {
  public void f()
  {
      List<Opportunity> Op = new List<Opportunity>();
     op = [select id, StageName , Amount from Opportunity];
     List<Opportunity> newOp = new List<Opportunity>();
     for(Opportunity updatedOp : Op)
     {

         if(updatedOp.Amount > 10009){

         updatedOp.StageName = 'Closed-won';
         }
         newOp.add(updatedOp);
     }
   update newOp;
  }
}