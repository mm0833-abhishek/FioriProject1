using my.abc as xy from '../db/data-model';
// using from '../../srv/cat-service';
// using from '../../db/data-model';

service CatalogService {
    @readonly entity Books as projection on xy.Books;
    entity Student as projection on xy.Student;
    entity Orders as projection on xy.Orders actions{
        action applyDiscount(age:Integer) returns String;
    };

    // action applyDiscount(age:Integer) returns String;

}




// annotate xy.Orders with @(
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
//         },
//         ]
// );
// annotate xy.Orders with @(
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
// annotate xy.Orders with @(
//     UI.DataPoint #progress : {
//         $Type : 'UI.DataPointType',
//         Value : quantity,
//         Title : 'quantity',
//         TargetValue : 10,
//         Visualization : #Progress,
//     },
    
// );

// annotate xy.Orders with @(
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Value : orderID,
//             Label : 'orderID',
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'productName',
//             Value : productName,
//         },
        
//         {
//             $Type : 'UI.DataField',
//             Label : 'price',
//             Value : price,
//         },
//         {
//             $Type : 'UI.DataFieldForAnnotation',
//             Label : 'PriceIndicatorColumn',
//             Target : '@UI.DataPoint#QuantityPointQuali',
//             ![@UI.Importance] : #High,
//         },
//         {
//             $Type : 'UI.DataFieldForAnnotation',
//             Label : '{@i18n>@Supplier}',
//             Target : '@Communication.Contact',
//             ![@UI.Importance] : #High
//         },
//         // {
//         //     $Type : 'UI.DataFieldForAnnotation',
//         //     Label : 'QuantityRatingssss',
//         //     Target : '@UI.DataPoint#RatingPointQualifierrr',
//         //     ![@UI.Importance] : #High,
//         // },
//     ],
//         UI.DataPoint #QuantityPointQuali : {
//         $Type : 'UI.DataPointType',
//         Value : quantity,
//         TargetValue : 10,
//         Visualization : #Progress,
//     },
//      UI.DataPoint #RatingPointQualifierrr : {
//         Value : quantity,
//         TargetValue : 10,
//         Visualization : #Rating,
//     },
// );
// annotate xy.Orders with @(
//     UI.FieldGroup #GeneratedGroup1 : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'productName',
//                 Value : productName,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'quantity',
//                 Value : quantity,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'price',
//                 Value : price,
//             },
//         ],
//     },



//     // UI.Facets : [
//     //     {
//     //         $Type : 'UI.ReferenceFacet',
//     //         ID : 'GeneratedFacet1',
//     //         Label : 'General Information',
//     //         Target : '@UI.FieldGroup#GeneratedGroup1',
//     //     },
//     // ]



// );
// annotate xy.Orders with @(
//     UI.SelectionFields : [
//         price,
//         quantity,
//     ],
//     Communication.Contact : {
//     fn : orderID,
//     email : [
//         {
//             type : #work,
//             address : productName
//         },
        
//     ]
// }
// );
// annotate xy.Orders with {
//     productName @Common.Label : 'productName'
// };
// annotate xy.Orders with {
//     price @Common.Label : 'price'
// };
// annotate xy.Orders with {
//     quantity @Common.Label : 'quantity'
// };
