const cds = require("@sap/cds");

// export service 
module.exports = cds.service.impl(async function () {

  const { Devices ,  Locations } = this.entities ; 

  //test function TestingFunction 
  this.on('TestingFunction', async (req) => {
    let result = {};
    //define array 
    result.data = [];
    for (i = 0; i < ( req?.data.category || 10 ) ; i++) {
      result.data.push({ id: i , 
        name1 : 'son dep chai'
      })
    }

    /*------------------------------------------------*/
    // let a = { b : 'son '}; // Ví dụ object a
    // let value = a?.b !== undefined ? 1 : 10; // Kiểm tra giá trị a.b
    // console.log(value);
    /*------------------------------------------------*/
    await DELETE.from(Locations).where({ID : '0000000002' }) ; 
    
    return result;
  }) 
  this.on(  'READ' , 'Devices'   , async (req) => {  
    const a = SELECT.from( Devices ).where( ) ;
    console.log( a ) ; 
    const Course = require("./declare" ).Course ;  
    console.log( Array.isArray(Course) ) ;  
    return a ; 
  }  )  
}) 