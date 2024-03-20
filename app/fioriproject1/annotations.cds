// using from '../../srv/cat-service';
// using from '../../db/data-model';

// annotate CatalogService.Orders with @(
//     UI.DataPoint #quantity : {
//         $Type : 'UI.DataPointType',
//         Value : quantity,
//         Title : 'quantity',
//     },
//     UI.HeaderFacets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'quantity',
//             Target : '@UI.DataPoint#progress',
//         },]
// );
// annotate CatalogService.Orders with @(
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup1',
//         },
//         {
//             $Type : 'UI.ReferenceFacet',
//             Label : 'Important Info',
//             ID : 'ImportantInfo',
//             Target : '@UI.FieldGroup#ImportantInfo',
//         },
//     ],
//     UI.FieldGroup #ImportantInfo : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Value : price,
//             },{
//                 $Type : 'UI.DataField',
//                 Value : quantity,
//             },],
//     }
// );
// annotate CatalogService.Orders with @(
//     UI.DataPoint #progress : {
//         $Type : 'UI.DataPointType',
//         Value : quantity,
//         Title : 'quantity',
//         TargetValue : 10,
//         Visualization : #Progress,
//     }
// );




// // using CatalogService as service from '../../srv/cat-service';

// // annotate service.Orders with @(
// //     UI.LineItem : [
// //         {
// //             $Type : 'UI.DataField',
// //             Value : orderID,
// //             Label : 'orderID',
// //         },
// //         {
// //             $Type : 'UI.DataField',
// //             Label : 'productName',
// //             Value : productName,
// //         },
        
// //         {
// //             $Type : 'UI.DataField',
// //             Label : 'price',
// //             Value : price,
// //         },
// //         {
// //             $Type : 'UI.DataFieldForAnnotation',
// //             Label : 'PriceIndicatorColumn',
// //             Target : '@UI.DataPoint#QuantityPointQuali',
// //             ![@UI.Importance] : #High,
// //         },
// //     ],
// //     UI.DataPoint #QuantityPointQuali : {
// //         $Type : 'UI.DataPointType',
// //         Value : quantity,
// //         TargetValue : 10,
// //         Visualization : #Progress,
// //     },
// // );
// // annotate service.Orders with @(
// //     UI.FieldGroup #GeneratedGroup1 : {
// //         $Type : 'UI.FieldGroupType',
// //         Data : [
// //             {
// //                 $Type : 'UI.DataField',
// //                 Label : 'productName',
// //                 Value : productName,
// //             },
// //             {
// //                 $Type : 'UI.DataField',
// //                 Label : 'quantity',
// //                 Value : quantity,
// //             },
// //             {
// //                 $Type : 'UI.DataField',
// //                 Label : 'price',
// //                 Value : price,
// //             },
// //         ],
// //     },
// //     UI.Facets : [
// //         {
// //             $Type : 'UI.ReferenceFacet',
// //             ID : 'GeneratedFacet1',
// //             Label : 'General Information',
// //             Target : '@UI.FieldGroup#GeneratedGroup1',
// //         },
// //     ]
// // );
// // annotate service.Orders with @(
// //     UI.SelectionFields : [
// //         price,
// //         quantity,
// //     ]
// // );
// // annotate service.Orders with {
// //     productName @Common.Label : 'productName'
// // };
// // annotate service.Orders with {
// //     price @Common.Label : 'price'
// // };
// // annotate service.Orders with {
// //     quantity @Common.Label : 'quantity'
// // };
