sap.ui.define([
    "sap/m/MessageToast"
], function(MessageToast) {
    'use strict';

    return {
        MsgToast: function(oEvent) {
            MessageToast.show("Hello SAPIENS");
        }
    };
});
