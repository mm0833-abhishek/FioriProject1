using CatalogService as service from '../../srv/cat-service';

annotate service.Orders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'orderID',
            Value : orderID,
        },
      
        {
            $Type : 'UI.DataField',
            Label : 'productName',
            Value : productName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'price',
            Value : price,
        },
         {
        $Type : 'UI.DataFieldForAnnotation',
        Label : 'contactForm',
        Target : '@Communication.Contact',
        ![@UI.Importance] : #High
    },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.applyDiscount',
            Label : 'applyDiscount',
            Inline : true,
        },
      
    ]
);
annotate service.Orders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'orderID',
                Value : orderID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'productName',
                Value : productName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'quantity',
                Value : quantity,
            },
            {
                $Type : 'UI.DataField',
                Label : 'price',
                Value : price,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Second Section',
            ID : 'SecondSection',
            Target : '@UI.FieldGroup#SecondSection',
        },
    ]
);
annotate service.Orders with @(
    UI.SelectionFields : [
        price,
        quantity,
        orderID,
],
    Communication.Contact : {
    fn : orderID,
    email : [
        {
            type : #work,
            address : productName
        },
        
    ]
},
// CountryID : UUID @(
//     Common : {
//         ValueList #0020_Country : {
//             Label : 'price',
//             CollectionPath : 'Z0022',
//             Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterOut',
//                 LocalDataProperty : orderID,
//                 ValueListProperty : 'CountryIdentifier'
//             },
//             {
//                 $Type : 'Common.ValueListParameterIn',
//                 LocalDataProperty : orderID,
//                 ValueListProperty : 'RegionIdentifier'
//             }
//             ]
//        }
//     }
// );
);
annotate service.Orders with {
    price @Common.Label : 'price'
};
annotate service.Orders with {
    quantity @Common.Label : 'quantity'
};
annotate service.Orders with {
    orderID @Common.Label : 'orderID'
};
annotate service.Orders with @(
    UI.DataPoint #quantity : {
        Value : quantity,
        Visualization : #Progress,
        TargetValue : 10,
    }
);
// annotate service.Orders with @(
//     UI.DataPoint #quantity1 : {
//         Value : quantity,
//         Visualization : #Progress,
//         TargetValue : 10,
//     }
// );
annotate service.Orders with @(
    UI.FieldGroup #SecondSection : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : productName,
                Label : 'productName',
            },],
    }
);
annotate service.Orders with @(
    UI.DataPoint #progress : {
        $Type : 'UI.DataPointType',
        Value : quantity,
        Title : 'quantity',
        TargetValue : 10,
        Visualization : #Progress,
        Criticality : quantity,
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'quantity',
            Target : '@UI.DataPoint#progress',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'price',
            Target : '@UI.Chart#price',
        },
    ]
);
annotate service.Orders with @(
    UI.DataPoint #price : {
        Value : price,
        TargetValue : 10000,
    },
    UI.Chart #price : {
        ChartType : #Donut,
        Title : 'price',
        Measures : [
            price,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#price',
                Role : #Axis1,
                Measure : price,
            },
        ],
    }
);
// annotate service.Orders with @(
//     Communication.Contact #contact : {
//         $Type : 'Communication.ContactType',
//         fn : productName,
//     }
// );

annotate service.Orders {
    orderID @Common.ValueList: {
        Label         : 'orderID',
        CollectionPath: 'Orders',
        Parameters    : [
            {
                $Type            : 'Common.ValueListParameterOut',
                LocalDataProperty: 'orderID',
                ValueListProperty: 'orderID'
            },
            {
                $Type            : 'Common.ValueListParameterIn',
                LocalDataProperty: 'orderID',
                ValueListProperty: 'orderID'
            }
        ]
    }


    // orderID : String @(
    // Common : {
    //     ValueList : {
    //         Label : 'Country',
    //         CollectionPath : 'Z0022',
    //         Parameters : [
    //         {
    //             $Type : 'Common.ValueListParameterOut',
    //             LocalDataProperty : CountryID,
    //             ValueListProperty : 'CountryIdentifier'
    //         },
    //         {
    //             $Type : 'Common.ValueListParameterIn',
    //             LocalDataProperty : RegionID,
    //             ValueListProperty : 'RegionIdentifier'
    //         }
    //         ]
    //    }
    // }


}


