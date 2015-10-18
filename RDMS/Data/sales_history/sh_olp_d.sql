Rem
Rem $Header: sh_olp_d.sql 17-sep-2001.15:57:34 ahunold Exp $
Rem
Rem sh_olp_d.sql
Rem
Rem Copyright (c) 2001, Oracle Corporation.  All rights reserved.  
Rem
Rem    NAME
Rem      sh_olp_d.sql - Drop columns used by OLAP Server 
Rem
Rem    DESCRIPTION
Rem      SH is the Sales History schema of the Oracle 9i Sample
Rem    Schemas
Rem
Rem    NOTES
Rem      
Rem
Rem    MODIFIED   (MM/DD/YY)
Rem    ahunold    09/17/01 - sh_analz.sql
Rem    ahunold    04/23/01 - duplicate lines
Rem    ahunold    04/05/01 - dimension names
Rem    ahunold    03/05/01 - external table, no DROPs
Rem    ahunold    02/07/01 - CMWLite
Rem    ahunold    02/01/01 - Merged ahunold_two_facts
Rem    hbaer      01/29/01 - Created
Rem

ALTER TABLE products
    DROP COLUMN prod_total;

ALTER TABLE customers
    DROP COLUMN cust_total;

ALTER TABLE promotions
    DROP COLUMN promo_total;

ALTER TABLE channels
    DROP COLUMN channel_total;

ALTER TABLE countries
    DROP COLUMN country_total;

COMMIT;

REM redefinition of original dimensions

DROP DIMENSION times_dim;

DROP DIMENSION customers_dim;

DROP DIMENSION products_dim;

DROP DIMENSION promotions_dim;

DROP DIMENSION channels_dim;

@@sh_hiera
@@sh_analz