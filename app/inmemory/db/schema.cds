namespace guitarStore;

entity Product {
  key ID: UUID;
  productName: String(200);
  productDescription: String(500);
  price: Decimal(10,2);
  targetAudiences: Association to many TargetAudience on targetAudiences.product = $self;
  warehouseStock: Association to Warehouse;
  discounts: Association to many Discount on discounts.product = $self;
  targetaudience: Association to TargetAudience;
  discount: Association to Discount;
}

entity TargetAudience {
  key ID: UUID;
  audienceName: String(200);
  pitch: String(500);
  products: Association to many Product on products.targetaudience = $self;
  product: Association to Product;
}

entity Warehouse {
  key ID: UUID;
  stock: Integer;
  products: Association to many Product on products.warehouseStock = $self;
}

entity Discount {
  key ID: UUID;
  discountPercentage: Double;
  products: Association to many Product on products.discount = $self;
  product: Association to Product;
}

