Rem
Rem $Header: sh_hiera.sql 01-feb-2001.15:13:21 ahunold Exp $
Rem
Rem sh_hiera.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      sh_hiera.sql - Create dimensions and hierarchies
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

CREATE DIMENSION times_dim
   LEVEL day         IS TIMES.TIME_ID
   LEVEL month       IS TIMES.CALENDAR_MONTH_DESC
   LEVEL quarter     IS TIMES.CALENDAR_QUARTER_DESC
   LEVEL year        IS TIMES.CALENDAR_YEAR
   LEVEL fis_week    IS TIMES.WEEK_ENDING_DAY
   LEVEL fis_month   IS TIMES.FISCAL_MONTH_DESC
   LEVEL fis_quarter IS TIMES.FISCAL_QUARTER_DESC
   LEVEL fis_year    IS TIMES.FISCAL_YEAR
   HIERARCHY cal_rollup    (
             day     CHILD OF
             month   CHILD OF
             quarter CHILD OF
             year
   )
   HIERARCHY fis_rollup    (
             day         CHILD OF
             fis_week    CHILD OF
             fis_month   CHILD OF
             fis_quarter CHILD OF
             fis_year
   )
   ATTRIBUTE day DETERMINES 
    (day_number_in_week, day_name, day_number_in_month,
         calendar_week_number)
   ATTRIBUTE month DETERMINES
    (calendar_month_desc,
         calendar_month_number, calendar_month_name,
         days_in_cal_month, end_of_cal_month)
   ATTRIBUTE quarter DETERMINES
    (calendar_quarter_desc,
         calendar_quarter_number,days_in_cal_quarter,
     end_of_cal_quarter)
   ATTRIBUTE year DETERMINES
    (calendar_year,
         days_in_cal_year, end_of_cal_year)
   ATTRIBUTE fis_week DETERMINES
    (week_ending_day,
         fiscal_week_number)
   ATTRIBUTE fis_month DETERMINES
    (fiscal_month_desc, fiscal_month_number, fiscal_month_name,
     days_in_fis_month, end_of_fis_month)
   ATTRIBUTE fis_quarter DETERMINES
    (fiscal_quarter_desc,
         fiscal_quarter_number, days_in_fis_quarter,
     end_of_fis_quarter)
   ATTRIBUTE fis_year DETERMINES
    (fiscal_year, 
         days_in_fis_year, end_of_fis_year)
;

execute dbms_olap.validate_dimension('times_dim','sh',false,true)
SELECT COUNT(*) FROM mview$_exceptions;

CREATE DIMENSION customers_dim 
    LEVEL customer  IS (customers.cust_id)
    LEVEL city  IS (customers.cust_city) 
    LEVEL state     IS (customers.cust_state_province) 
    LEVEL country   IS (countries.country_id) 
    LEVEL subregion IS (countries.country_subregion) 
    LEVEL region IS (countries.country_region) 
    HIERARCHY geog_rollup (
        customer    CHILD OF
        city        CHILD OF 
        state       CHILD OF 
        country     CHILD OF 
        subregion   CHILD OF        
        region 
    JOIN KEY (customers.country_id) REFERENCES country
    )
    ATTRIBUTE customer DETERMINES
    (cust_first_name, cust_last_name, cust_gender, 
     cust_marital_status, cust_year_of_birth, 
     cust_income_level, cust_credit_limit,
         cust_street_address, cust_postal_code,
         cust_main_phone_number, cust_email)
        ATTRIBUTE city DETERMINES (cust_city) 
        ATTRIBUTE state DETERMINES (cust_state_province) 
    ATTRIBUTE country DETERMINES (countries.country_name)
        ATTRIBUTE subregion DETERMINES (countries.country_subregion)
        ATTRIBUTE region DETERMINES (countries.country_region) 
;

execute dbms_olap.validate_dimension('customers_dim','sh',false,true)
SELECT COUNT(*) FROM mview$_exceptions;

CREATE DIMENSION products_dim 
    LEVEL product       IS (products.prod_id)
    LEVEL subcategory   IS (products.prod_subcategory) 
    LEVEL category      IS (products.prod_category) 
    HIERARCHY prod_rollup (
        product     CHILD OF 
        subcategory     CHILD OF 
        category
    ) 
    ATTRIBUTE product DETERMINES 
        (products.prod_name, products.prod_desc,
         prod_weight_class, prod_unit_of_measure,
         prod_pack_size,prod_status, prod_list_price, prod_min_price)
    ATTRIBUTE subcategory DETERMINES 
        (prod_subcategory, prod_subcat_desc)
    ATTRIBUTE category DETERMINES 
        (prod_category, prod_cat_desc)
;

execute dbms_olap.validate_dimension('products_dim','sh',false,true)
SELECT COUNT(*) FROM mview$_exceptions;

CREATE DIMENSION promotions_dim 
    LEVEL promo       IS (promotions.promo_id) 
    LEVEL subcategory IS (promotions.promo_subcategory) 
    LEVEL category    IS (promotions.promo_category) 
    HIERARCHY promo_rollup (
        promo       CHILD OF 
        subcategory     CHILD OF 
        category
    ) 
    ATTRIBUTE promo DETERMINES 
        (promo_name, promo_cost,
         promo_begin_date, promo_end_date)
        ATTRIBUTE subcategory DETERMINES (promo_subcategory)
        ATTRIBUTE category DETERMINES (promo_category)
;

execute dbms_olap.validate_dimension('promotions_dim','sh',false,true)
SELECT COUNT(*) FROM mview$_exceptions;

CREATE DIMENSION channels_dim 
    LEVEL channel      IS (channels.channel_id) 
    LEVEL channel_class IS (channels.channel_class) 
    HIERARCHY channel_rollup (
        channel     CHILD OF 
        channel_class
    )
        ATTRIBUTE channel DETERMINES (channel_desc)
        ATTRIBUTE channel_class DETERMINES (channel_class)
;

execute dbms_olap.validate_dimension('channels_dim','sh',false,true)
SELECT COUNT(*) FROM mview$_exceptions;

COMMIT;

