Rem
Rem $Header: sh_analz.sql 27-apr-2001.13:56:20 ahunold Exp $
Rem
Rem sh_analz.sql
Rem
Rem  Copyright (c) Oracle Corporation 2001. All Rights Reserved.
Rem
Rem    NAME
Rem      sh_analz.sql - Gather statistics for SH schema
Rem
Rem    DESCRIPTION
Rem      SH is the Sales History schema of the Oracle 9i Sample
Rem    Schemas
Rem
Rem    NOTES
Rem      To avoid regression test differences, COMPUTE
Rem      statistics are gathered.
Rem  
Rem      It is not recommended to use the estimate_percent
Rem      parameter for larger data volumes. For example:
Rem      EXECUTE dbms_stats.gather_schema_stats( -
Rem          'SH'                            ,       -
Rem          granularity => 'ALL'            ,       -
Rem          cascade => TRUE                 ,       -
Rem          estimate_percent => 20          ,       -
Rem          block_sample => TRUE            );
Rem      
Rem
Rem    MODIFIED   (MM/DD/YY)
Rem      ahunold   04/27/01 - COMPUTE
Rem      hbaer     01/29/01 - Created
Rem

EXECUTE dbms_stats.gather_schema_stats( -
    'SH'                ,   -
    granularity => 'ALL'     ,   -
    cascade => TRUE          ,   -
    block_sample => TRUE     );