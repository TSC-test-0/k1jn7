using { guitarStore } from '../db/schema.cds';

service guitarStoreSrv {
  entity Product as projection on guitarStore.Product;
  entity TargetAudience as projection on guitarStore.TargetAudience;
  entity Warehouse as projection on guitarStore.Warehouse;
  entity Discount as projection on guitarStore.Discount;
}