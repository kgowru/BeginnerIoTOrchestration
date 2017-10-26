@isTest(SeeAllData=true)

private class SendPlatformEventTest {
    @isTest static void test() {
        
            
            
            
            emailSend__e  pe = new emailSend__e ();
            pe.Asset_Id__c = [select id from Asset where Serial_Number__c != null limit 1].Id;
            pe.Email_Type__c = 'Fridge Temperature';
            
            // Call method to publish events
            Test.startTest();
            Database.SaveResult sr = EventBus.publish(pe);
            Test.stopTest();

            // Verify SaveResult value - isSuccess should be false
            System.assertEquals(true, sr.isSuccess());
            
            // Log the error message
            for(Database.Error err : sr.getErrors()) {
                System.debug('Error returned: ' +
                             err.getStatusCode() +
                             ' - ' +
                             err.getMessage()+' - '+err.getFields());
            }
    }
}