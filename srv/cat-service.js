const cds = require("@sap/cds");

module.exports = cds.service.impl(async function (srv) {
    srv.before('applyDiscount', async(req)=>{
        
       console.log(req);

    })

    srv.on('applyDiscount', async(req)=>{
        console.log(await cds.run(req.query));
        return "Hello fnImport";

    })
    
});