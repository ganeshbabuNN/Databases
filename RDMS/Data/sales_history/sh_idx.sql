Rem
Rem $Header: sh_idx.sql 01-feb-2001.15:13:21 ahunold Exp $
Rem
Rem sh_idx.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      sh_idx.sql - Create database objects
Rem
Rem    DESCRIPTION
Rem      SH is the Sales History schema of the Oracle 9i Sample
Rem    Schemas
Rem
Rem    NOTES
Rem      
Rem
Rem    MODIFIED   (MM/DD/YY)
Rem     hbaer      01/29/01 - Created
Rem     ahunold    03/05/01 - no DROPs needed, part of creation suite

REM some indexes on fact table SALES

CREATE BITMAP INDEX sales_prod_bix
       ON sales (prod_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX sales_cust_bix
       ON sales (cust_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX sales_time_bix
       ON sales (time_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX sales_channel_bix
       ON sales (channel_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX sales_promo_bix
       ON sales (promo_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

REM some indexes on fact table COSTS

CREATE BITMAP INDEX costs_prod_bix
       ON costs (prod_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX costs_time_bix
       ON costs (time_id)
       LOCAL NOLOGGING COMPUTE STATISTICS ;

REM some indexes on dimension tables

CREATE BITMAP INDEX products_prod_status_bix
    ON products(prod_status)
        NOLOGGING COMPUTE STATISTICS ;

CREATE INDEX products_prod_subcat_ix
    ON products(prod_subcategory)
        NOLOGGING COMPUTE STATISTICS ;

CREATE INDEX products_prod_cat_ix
    ON products(prod_category)
        NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX customers_gender_bix
    ON customers(cust_gender)
        NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX customers_marital_bix
    ON customers(cust_marital_status)
        NOLOGGING COMPUTE STATISTICS ;

CREATE BITMAP INDEX customers_yob_bix
    ON customers(cust_year_of_birth)
        NOLOGGING COMPUTE STATISTICS ;

COMMIT;
