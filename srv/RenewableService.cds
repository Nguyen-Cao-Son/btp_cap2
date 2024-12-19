using { sap.applicaiton.renewable as renewable  } from '../db/Renewable'  ; 

service renewableService {  
 
   entity Devices as projection on renewable.Devices  ; 
   entity Locations as projection on renewable.Locations  ; 
   entity MaintenanceRecords as projection on renewable.MaintenanceRecords  ;
   entity PerformanceLogs as projection on renewable.PerformanceLogs ; 


    @open
    type object {
      id : Int16 ; 
      name : String(20) ; 
    };
   function TestingFunction(category : Integer  ) returns object;
} 
