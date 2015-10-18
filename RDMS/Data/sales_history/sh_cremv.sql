Rem
Rem $Header: sh_cremv.sql 01-feb-2001.15:13:21 ahunold Exp $
Rem
Rem sh_cremv.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      sh_cremv.sql - Create materialized views
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
Rem    ahunold    03/05/01 - no DROPs needed, part of creation script


Rem first materialized view; simple aggregate join MV
Rem equivalent to example 1 in MV chapter DWG, page 8-11

CREATE MATERIALIZED VIEW cal_month_sales_mv
PCTFREE 5
BUILD IMMEDIATE
REFRESH FORCE
ENABLE QUERY REWRITE
AS
SELECT   t.calendar_month_desc
,        sum(s.amount_sold) AS dollars
FROM     sales s
,        times t
WHERE    s.time_id = t.time_id
GROUP BY t.calendar_month_desc;


Rem more complex mv with additional key columns to join to other dimensions;

CREATE MATERIALIZED VIEW fweek_pscat_sales_mv
PCTFREE 5
BUILD IMMEDIATE
REFRESH COMPLETE
ENABLE QUERY REWRITE
AS
SELECT   t.week_ending_day
,        p.prod_subcategory
,        sum(s.amount_sold) AS dollars
,        s.channel_id
,        s.promo_id
FROM     sales s
,        times t
,        products p
WHERE    s.time_id = t.time_id
AND      s.prod_id = p.prod_id
GROUP BY t.week_ending_day
,        p.prod_subcategory
,        s.channel_id
,        s.promo_id;

CREATE BITMAP INDEX FW_PSC_S_MV_SUBCAT_BIX  
ON fweek_pscat_sales_mv(prod_subcategory);

CREATE BITMAP INDEX FW_PSC_S_MV_CHAN_BIX
ON fweek_pscat_sales_mv(channel_id);

CREATE BITMAP INDEX FW_PSC_S_MV_PROMO_BIX   
ON fweek_pscat_sales_mv(promo_id);

CREATE BITMAP INDEX FW_PSC_S_MV_WD_BIX
ON fweek_pscat_sales_mv(week_ending_day);
