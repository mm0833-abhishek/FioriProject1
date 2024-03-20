sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel"
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller,JSONModel) {
        "use strict";

        return Controller.extend("uiproject1.controller.View1", {
            onInit:async function () {

                var jModel= await new JSONModel("./model/Products.json");
                this.getView().setModel(jModel,"jsModel");
 //=================================================  
                var newModel= new JSONModel({
                    "items": {
                                "def":"ghi"
                    }
                })

                this.getView().setModel(newModel,"nwModel");
//=================================================
                const oRouter = this.getOwnerComponent().getRouter();
                oRouter.getRoute("RouteView1").attachPatternMatched(this.onObjectMatched, this);
                
            },

                onObjectMatched(oEvent) {
                console.log("inside object matched")
                console.log(this.getView().getModel("locModel").getProperty("/items"))

                console.log("haiii")
                console.log(this.getView().getModel("jsModel").getProperty("/items"))

                console.log("helloooo")
                console.log(this.getView().getModel("nwModel").getProperty("/items"))
            },

                onExperiment:function(){
                    console.log("iam triggered when the button is clicked")
                    console.log(this.getView().getModel("jsModel").getProperty("/items"))
            },


            // let jModel= new JSONModel("./model/Products.json");

            //     this.getView().setModel(jModel,"jsModel");
            //     console.log(this.getView().getModel("jsModel").getProperty("/items"))


                // const oRouter = this.getOwnerComponent().getRouter();
                // oRouter.getRoute("RouteView1").attachPatternMatched(this.onObjectMatched, this);
            //     var that=this;



            // this.getProp()


              //let jModel= new JSONModel("./model/Products.json");
               //  let jModel = new sap.ui.model.json.JSONModel();
                // await jModel.loadData("./model/Products.json");

                //  this.getView().setModel(jModel,"jsModel");
                // console.log(this.getView().getModel("jsModel").getProperty("/items"))
                    // var that=this;
                    // var oModel=that.getView().getModel("locModel");
                    // console.log(oModel.getProperty("/items"));

            //   console.log(this.getView().getModel("locModel").getProperty("/items"))


                // const oRouter = this.getOwnerComponent().getRouter();
                // oRouter.getRoute("RouteView1").attachPatternMatched(this.onObjectMatched, this);

                // let prop=this.getView().getModel("jsModel").getProperty("/items")
                // console.log(prop)


                // this.modellll();




                // try {
                //     // Load JSON data into model
                //     let jModel = new sap.ui.model.json.JSONModel();
                //     await jModel.loadData("./model/Products.json");
            
                //     // Set model to the view
                //     this.getView().setModel(jModel, "jsModel");
            
                //     // Access property after model is set
                //     let prop = this.getView().getModel("jsModel").getProperty("/items");
                    
                //     // Ensure property is available before accessing
                //     if (prop) {
                //         console.log(prop);
                //     } else {
                //         console.error("Failed to retrieve items from the model.");
                //     }
                // } catch (error) {
                //     console.error("Error occurred while initializing:", error);
                // }


                // setTimeout(()=>{
                //     let prop=[]
                //     prop=this.getView().getModel("jsModel").getProperty("/items/item/0/batters")
                //     console.log(prop)
                //     prop.push({id: 'hai', type: "hellooood"})
                //     console.log(this.getView().getModel("jsModel").setProperty("/items/item/0/batters/batter/",
                //     prop))
                // }, 3000);
               
            // },
            // onAfterRendering: function()
            // {
            //     console.log("onAfter");
            //     console.log(this.getView().getModel("jsModel").getProperty("/items"))
            // },

            // modellll:async function(){
            //     let prop=await this.getView().getModel("jsModel").getProperty("/items")
            //     console.log(prop)
            // },

            // fetchRequests: function () {
            //     let url =this.getOwnerComponent().getModel("oDaModel").getServiceUrl() +"Request";
            //     var that = this;
            //     var hrID = "HR123"; // HR ID to filter requests
            //     $.ajax({
            //         url: url,      //   "/odata/v4/catalog/Request",
            //         method: "GET",
            //         dataType: "json",
            //         data: {
            //             $filter: "hrID eq '" + hrID + "'"
            //         },
            //         success: function (data) {
            //             var jsonModel = new JSONModel(data.value);
            //             that.getView().setModel(jsonModel, "hrRequestsModel");
            //         },
            //         error: function (jqXHR, textStatus, errorThrown) {
            //             console.error("Error fetching HR requests:", errorThrown);
            //         }
            //     });
            // },
            // onExperiment:function(){
            // //    console.log(this.getView.getModel(jModel))
            //    console.log(this.getView().getModel("jsModel").getProperty("/items"))
            // },



            // onObjectMatched(oEvent) {
            //     let prop=this.getView().getModel("locModel").getProperty("/items")
            //     console.log(prop)
            //     console.log("haiii")
            //     console.log(this.getView().getModel("jsModel").getProperty("/items"))
            // },

        });
    });
