@isTest
private class WarehouseCalloutServiceTest {
  // implement your mock callout test here
    @isTest static void testWareHouse(){
        Test.startTest();
        Test.setMock(HttpCalloutMock.class, new WarehouseCalloutServiceMock());
        
         WarehouseCalloutService.runWarehouseEquipmentSync();
        Test.stopTest();
    }
}