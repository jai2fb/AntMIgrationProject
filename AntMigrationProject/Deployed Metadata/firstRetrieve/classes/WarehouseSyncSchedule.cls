global class WarehouseSyncSchedule implements schedulable {
  // implement scheduled code here
  
    global void execute(schedulableContext sc){
        
        WarehouseCalloutService.runWarehouseEquipmentSync();
        
    }
    	
}