using { renewableService as Renewable } from './RenewableService';

annotate Renewable.Devices with { 
    @UI: {
       HeaderInfo: {
          typeName : 'Student' ,
          typeNamePlural: 'Student' ,
          title : { type : #STANDARD ,  label: 'Student label' , value : 'ID'   } ,
          description: { type : #STANDARD , label : 'Name' , value: 'Fristname'  }
         }
 }
  @UI :  {
   LineItem  : [ { position : 10 , label : 'test' } ]
  }
  ID
  } ; 

