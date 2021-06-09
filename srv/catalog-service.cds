using my.myshop as my from '../db/schema';
using sap.common as common from '@sap/cds/common';

service CatalogService {
    entity Products as projection on my.Products;
}
