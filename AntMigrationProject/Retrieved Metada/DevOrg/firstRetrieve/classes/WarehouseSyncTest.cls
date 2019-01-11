@isTest
public class WarehouseSyncTest {
    
    @isTest static void SyncTest() {
		// Implement test code

		Test.startTest();
        Test.setMock(HttpCalloutMock.class, new WarehouseCalloutServiceMock());
       	WarehouseSyncSchedule syncMe = new WarehouseSyncSchedule();
        String CRON_EXP = '0 0 1 * * ?';
        String jobID = System.schedule('Test the Queue Status', CRON_EXP, syncMe);
        Test.stopTest();
        CronTrigger cTId = [SELECT State FROM CronTrigger WHERE Id = :jobID];
        System.assertEquals('WAITING', String.valueOf(cTId.State), 'jobID Doesnt Match');

	}

}