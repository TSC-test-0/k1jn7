using { guitarStoreSrv } from '../srv/service.cds';

annotate guitarStoreSrv.Product with @odata.draft.enabled;
annotate guitarStoreSrv.TargetAudience with @odata.draft.enabled;
annotate guitarStoreSrv.Warehouse with @odata.draft.enabled;
annotate guitarStoreSrv.Discount with @odata.draft.enabled;
annotate guitarStoreSrv.TargetAudience with @cds.odata.valuelist;
annotate guitarStoreSrv.Warehouse with @cds.odata.valuelist;
annotate guitarStoreSrv.Discount with @cds.odata.valuelist;
annotate guitarStoreSrv.Product with @cds.odata.valuelist;
annotate guitarStoreSrv.Product with @UI.HeaderInfo: { TypeName: 'Product', TypeNamePlural: 'Products', Title: { Value: productName } };
annotate guitarStoreSrv.Product with {
  ID @Common.Text: { $value: productName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Product with @UI.Identification: [{ Value: productName }];
annotate guitarStoreSrv.Product with {
  productName @title: 'Product Name';
  productDescription @title: 'Product Description';
  price @title: 'Price'
};

annotate guitarStoreSrv.Product with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouseStock_ID },
    { $Type: 'UI.DataField', Label: 'Target Audience', Value: targetaudience_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
];

annotate guitarStoreSrv.Product with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: productName },
    { $Type: 'UI.DataField', Value: productDescription },
    { $Type: 'UI.DataField', Value: price },
    { $Type: 'UI.DataField', Label: 'Warehouse', Value: warehouseStock_ID },
    { $Type: 'UI.DataField', Label: 'Target Audience', Value: targetaudience_ID },
    { $Type: 'UI.DataField', Label: 'Discount', Value: discount_ID }
  ]
};

annotate guitarStoreSrv.Product with {
  targetaudience @Common.Text: { $value: targetaudience.audienceName, ![@UI.TextArrangement]: #TextOnly }
};

annotate guitarStoreSrv.Product with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarStoreSrv.TargetAudience with @UI.HeaderInfo: { TypeName: 'Target Audience', TypeNamePlural: 'Target Audiences', Title: { Value: audienceName } };
annotate guitarStoreSrv.TargetAudience with {
  ID @Common.Text: { $value: audienceName, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.TargetAudience with @UI.Identification: [{ Value: audienceName }];
annotate guitarStoreSrv.TargetAudience with {
  audienceName @title: 'Audience Name';
  pitch @title: 'Pitch'
};

annotate guitarStoreSrv.TargetAudience with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: audienceName },
    { $Type: 'UI.DataField', Value: pitch },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
];

annotate guitarStoreSrv.TargetAudience with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: audienceName },
    { $Type: 'UI.DataField', Value: pitch },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
  ]
};

annotate guitarStoreSrv.TargetAudience with {
  product @Common.Text: { $value: product.productName, ![@UI.TextArrangement]: #TextOnly }
};

annotate guitarStoreSrv.TargetAudience with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarStoreSrv.Warehouse with @UI.HeaderInfo: { TypeName: 'Warehouse', TypeNamePlural: 'Warehouses', Title: { Value: stock } };
annotate guitarStoreSrv.Warehouse with {
  ID @Common.Text: { $value: stock, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Warehouse with @UI.Identification: [{ Value: stock }];
annotate guitarStoreSrv.Warehouse with {
  stock @title: 'Stock'
};

annotate guitarStoreSrv.Warehouse with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: stock }
];

annotate guitarStoreSrv.Warehouse with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: stock }
  ]
};

annotate guitarStoreSrv.Warehouse with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

annotate guitarStoreSrv.Discount with @UI.HeaderInfo: { TypeName: 'Discount', TypeNamePlural: 'Discounts', Title: { Value: discountPercentage } };
annotate guitarStoreSrv.Discount with {
  ID @Common.Text: { $value: discountPercentage, ![@UI.TextArrangement]: #TextOnly }
};
annotate guitarStoreSrv.Discount with @UI.Identification: [{ Value: discountPercentage }];
annotate guitarStoreSrv.Discount with {
  discountPercentage @title: 'Discount Percentage'
};

annotate guitarStoreSrv.Discount with @UI.LineItem: [
    { $Type: 'UI.DataField', Value: discountPercentage },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
];

annotate guitarStoreSrv.Discount with @UI.FieldGroup #Main: {
  $Type: 'UI.FieldGroupType', Data: [
    { $Type: 'UI.DataField', Value: discountPercentage },
    { $Type: 'UI.DataField', Label: 'Product', Value: product_ID }
  ]
};

annotate guitarStoreSrv.Discount with {
  product @Common.Text: { $value: product.productName, ![@UI.TextArrangement]: #TextOnly }
};

annotate guitarStoreSrv.Discount with @UI.Facets: [
  { $Type: 'UI.ReferenceFacet', ID: 'Main', Label: 'General Information', Target: '@UI.FieldGroup#Main' }
];

