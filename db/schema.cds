	namespace my.myshop;

    using {managed,cuid} from '@sap/cds/common';

	entity Products: managed, cuid {
	  key ID        : String(15);
	  name          : String(30);
	  status        : String(10);
	  price         : Decimal(15, 2);
	  taxrate       : Integer;
      currency      : String(3);
	  height        : Decimal(13, 3);
	  depth         : Decimal(13, 3);
	  width         : Decimal(13, 3);
	  sizeuom       : String(2);
      }
 
    