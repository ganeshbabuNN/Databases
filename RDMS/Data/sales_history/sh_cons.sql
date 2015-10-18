Rem
Rem $Header: sh_cons.sql 01-feb-2001.15:13:21 ahunold Exp $
Rem
Rem sh_cons.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      sh_cons.sql - Define constraints
Rem
Rem    DESCRIPTION
Rem      SH is the Sales History schema of the Oracle 9i Sample
Rem    Schemas
Rem
Rem    NOTES
Rem      
Rem
Rem    MODIFIED   (MM/DD/YY)
Rem    hbaer      01/29/01 - Created
Rem

ALTER TABLE sales MODIFY CONSTRAINT sales_product_fk  ENABLE NOVALIDATE;
ALTER TABLE sales MODIFY CONSTRAINT sales_customer_fk ENABLE NOVALIDATE;
ALTER TABLE sales MODIFY CONSTRAINT sales_time_fk     ENABLE NOVALIDATE;
ALTER TABLE sales MODIFY CONSTRAINT sales_channel_fk  ENABLE NOVALIDATE;
ALTER TABLE sales MODIFY CONSTRAINT sales_promo_fk    ENABLE NOVALIDATE;
ALTER TABLE costs MODIFY CONSTRAINT costs_time_fk     ENABLE NOVALIDATE;
ALTER TABLE costs MODIFY CONSTRAINT costs_product_fk  ENABLE NOVALIDATE;