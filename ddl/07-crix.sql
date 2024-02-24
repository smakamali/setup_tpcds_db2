connect to tpcds;

------------------------------------------------------------
--  indexes based on foreign key columns
--  note: some definitions will fail because they were
--        created as indexes based on primary key columns
------------------------------------------------------------
create index tpcds.p_startdate on tpcds.promotion
    (p_start_date_sk) pctfree 0;
commit work; 

create index tpcds.p_enddate on tpcds.promotion
    (p_end_date_sk) pctfree 0;
commit work; 

create index tpcds.p_item on tpcds.promotion
    (p_item_sk) pctfree 0;
commit work;

create index tpcds.s_closeddate on tpcds.store
    (s_closed_date_sk) pctfree 0;
commit work; 

create index tpcds.cc_closeddate on tpcds.call_center
    (cc_closed_date_sk) pctfree 0;
commit work; 

create index tpcds.cc_opendate on tpcds.call_center
    (cc_open_date_sk) pctfree 0;
commit work; 

create index tpcds.cc_curcdemo on tpcds.customer
    (c_current_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.cc_curhdemo on tpcds.customer
    (c_current_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.c_curaddr on tpcds.customer
    (c_current_addr_sk) pctfree 0;
commit work; 

create index tpcds.c_firstshiptodate on tpcds.customer
    (c_first_shipto_date_sk) pctfree 0;
commit work; 

create index tpcds.c_salesdate on tpcds.customer
    (c_first_sales_date_sk) pctfree 0;
commit work; 

create index tpcds.web_opendate on tpcds.web_site
    (web_open_date_sk) pctfree 0;
commit work; 

create index tpcds.web_closedate on tpcds.web_site
    (web_close_date_sk) pctfree 0;
commit work; 

create index tpcds.cp_startdate on tpcds.catalog_page
    (cp_start_date_sk) pctfree 0;
commit work; 

create index tpcds.cp_enddate on tpcds.catalog_page
    (cp_end_date_sk) pctfree 0;
commit work; 

create index tpcds.hd_incomeband on tpcds.household_demographics
    (hd_income_band_sk) pctfree 0;
commit work; 

create index tpcds.wp_creationdate on tpcds.web_page
    (wp_creation_date_sk) pctfree 0;
commit work; 

create index tpcds.wp_accessedate on tpcds.web_page
    (wp_access_date_sk) pctfree 0;
commit work; 

create index tpcds.wp_cust on tpcds.web_page
    (wp_customer_sk) pctfree 0;
commit work; 

create index tpcds.ss_solddate on tpcds.store_sales
    (ss_sold_date_sk) pctfree 0;
commit work; 

create index tpcds.ss_soldtime on tpcds.store_sales
    (ss_sold_time_sk) pctfree 0;
commit work; 

create index tpcds.ss_item on tpcds.store_sales
    (ss_item_sk) pctfree 0;
commit work; 

create index tpcds.ss_cust on tpcds.store_sales
    (ss_customer_sk) pctfree 0;
commit work; 

create index tpcds.ss_cdemo on tpcds.store_sales
    (ss_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.ss_hdemo on tpcds.store_sales
    (ss_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.ss_addr on tpcds.store_sales
    (ss_addr_sk) pctfree 0;
commit work; 

create index tpcds.ss_store on tpcds.store_sales
    (ss_store_sk) pctfree 0;
commit work; 

create index tpcds.ss_promo on tpcds.store_sales
    (ss_promo_sk) pctfree 0;
commit work; 

create index tpcds.ss_ticket on tpcds.store_sales
    (ss_ticket_number) pctfree 0;
commit work;

create index tpcds.sr_returneddate on tpcds.store_returns
    (sr_returned_date_sk) pctfree 0;
commit work; 

create index tpcds.sr_returntime on tpcds.store_returns
    (sr_return_time_sk) pctfree 0;
commit work; 

create index tpcds.sr_item on tpcds.store_returns
    (sr_item_sk) pctfree 0;
commit work; 

create index tpcds.sr_cust on tpcds.store_returns
    (sr_customer_sk) pctfree 0;
commit work; 

create index tpcds.sr_cdemo on tpcds.store_returns
    (sr_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.sr_hdemo on tpcds.store_returns
    (sr_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.sr_addr on tpcds.store_returns
    (sr_addr_sk) pctfree 0;
commit work; 

create index tpcds.sr_store on tpcds.store_returns
    (sr_store_sk) pctfree 0;
commit work; 

create index tpcds.sr_reason on tpcds.store_returns
    (sr_reason_sk) pctfree 0;
commit work; 

create index tpcds.sr_ticket on tpcds.store_returns
    (sr_ticket_number) pctfree 0;
commit work;

create index tpcds.cs_solddate on tpcds.catalog_sales
    (cs_sold_date_sk) pctfree 0;
commit work; 

create index tpcds.cs_soldtime on tpcds.catalog_sales
    (cs_sold_time_sk) pctfree 0;
commit work; 

create index tpcds.cs_shipdate on tpcds.catalog_sales
    (cs_ship_date_sk) pctfree 0;
commit work; 

create index tpcds.cs_billcust on tpcds.catalog_sales
    (cs_bill_customer_sk) pctfree 0;
commit work; 

create index tpcds.cs_billcdemo on tpcds.catalog_sales
    (cs_bill_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.cs_billhdemo on tpcds.catalog_sales
    (cs_bill_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.cs_billaddr on tpcds.catalog_sales
    (cs_bill_addr_sk) pctfree 0;
commit work; 

create index tpcds.cs_shipcust on tpcds.catalog_sales
    (cs_ship_customer_sk) pctfree 0;
commit work; 

create index tpcds.cs_shipcdemo on tpcds.catalog_sales
    (cs_ship_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.cs_shiphdemo on tpcds.catalog_sales
    (cs_ship_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.cs_shipaddr on tpcds.catalog_sales
    (cs_ship_addr_sk) pctfree 0;
commit work; 

create index tpcds.cs_callcenter on tpcds.catalog_sales
    (cs_call_center_sk) pctfree 0;
commit work; 

create index tpcds.cs_catalogpage on tpcds.catalog_sales
    (cs_catalog_page_sk) pctfree 0;
commit work; 

create index tpcds.cs_shipmode on tpcds.catalog_sales
    (cs_ship_mode_sk) pctfree 0;
commit work; 

create index tpcds.cs_warehouse on tpcds.catalog_sales
    (cs_warehouse_sk) pctfree 0;
commit work; 

create index tpcds.cs_item on tpcds.catalog_sales
    (cs_item_sk) pctfree 0;
commit work; 

create index tpcds.cs_promo on tpcds.catalog_sales
    (cs_promo_sk) pctfree 0;
commit work; 

create index tpcds.cr_returneddate on tpcds.catalog_returns
    (cr_returned_date_sk) pctfree 0;
commit work; 

create index tpcds.cr_returnedtime on tpcds.catalog_returns
    (cr_returned_time_sk) pctfree 0;
commit work; 

create index tpcds.cr_item on tpcds.catalog_returns
    (cr_item_sk) pctfree 0;
commit work; 

create index tpcds.cr_refundedcust on tpcds.catalog_returns
    (cr_refunded_customer_sk) pctfree 0;
commit work; 

create index tpcds.cr_refundedcdemo on tpcds.catalog_returns
    (cr_refunded_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.cr_refundedhdemo on tpcds.catalog_returns
    (cr_refunded_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.cr_refundedaddr on tpcds.catalog_returns
    (cr_refunded_addr_sk) pctfree 0;
commit work; 

create index tpcds.cr_returningcust on tpcds.catalog_returns
    (cr_returning_customer_sk) pctfree 0;
commit work; 

create index tpcds.cr_returningcdemo on tpcds.catalog_returns
    (cr_returning_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.cr_returninghdemo on tpcds.catalog_returns
    (cr_returning_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.cr_returningaddr on tpcds.catalog_returns
    (cr_returning_addr_sk) pctfree 0;
commit work; 

create index tpcds.cr_callcenter on tpcds.catalog_returns
    (cr_call_center_sk) pctfree 0;
commit work; 

create index tpcds.cr_catalogpage on tpcds.catalog_returns
    (cr_catalog_page_sk) pctfree 0;
commit work; 

create index tpcds.cr_shipmode on tpcds.catalog_returns
    (cr_ship_mode_sk) pctfree 0;
commit work; 

create index tpcds.cr_warehouse on tpcds.catalog_returns
    (cr_warehouse_sk) pctfree 0;
commit work; 

create index tpcds.cr_reason on tpcds.catalog_returns
    (cr_reason_sk) pctfree 0;
commit work; 

create index tpcds.cr_order on tpcds.catalog_returns
    (cr_order_number) pctfree 0;
commit work;
create index tpcds.ws_solddate on tpcds.web_sales
    (ws_sold_date_sk) pctfree 0;
commit work; 

create index tpcds.ws_soldteim on tpcds.web_sales
    (ws_sold_time_sk) pctfree 0;
commit work; 

create index tpcds.ws_shipdate on tpcds.web_sales
    (ws_ship_date_sk) pctfree 0;
commit work; 

create index tpcds.ws_item on tpcds.web_sales
    (ws_item_sk) pctfree 0;
commit work; 

create index tpcds.ws_billcust on tpcds.web_sales
    (ws_bill_customer_sk) pctfree 0;
commit work; 

create index tpcds.ws_billcdemo on tpcds.web_sales
    (ws_bill_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.ws_billhdemo on tpcds.web_sales
    (ws_bill_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.ws_billaddr on tpcds.web_sales
    (ws_bill_addr_sk) pctfree 0;
commit work; 

create index tpcds.ws_shipcust on tpcds.web_sales
    (ws_ship_customer_sk) pctfree 0;
commit work; 

create index tpcds.ws_shipcdemo on tpcds.web_sales
    (ws_ship_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.ws_shiphdemo on tpcds.web_sales
    (ws_ship_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.ws_shipaddr on tpcds.web_sales
    (ws_ship_addr_sk) pctfree 0;
commit work; 

create index tpcds.ws_webpage on tpcds.web_sales
    (ws_web_page_sk) pctfree 0;
commit work; 

create index tpcds.ws_website on tpcds.web_sales
    (ws_web_site_sk) pctfree 0;
commit work; 

create index tpcds.ws_shipmode on tpcds.web_sales
    (ws_ship_mode_sk) pctfree 0;
commit work; 

create index tpcds.ws_warehouse on tpcds.web_sales
    (ws_warehouse_sk) pctfree 0;
commit work; 

create index tpcds.ws_promo on tpcds.web_sales
    (ws_promo_sk) pctfree 0;
commit work; 

create index tpcds.ws_order on tpcds.web_sales
    (ws_order_number) pctfree 0;
commit work;

create index tpcds.wr_returneddate on tpcds.web_returns
    (wr_returned_date_sk) pctfree 0;
commit work; 

create index tpcds.wr_returnedtime on tpcds.web_returns
    (wr_returned_time_sk) pctfree 0;
commit work; 

create index tpcds.wr_item on tpcds.web_returns
    (wr_item_sk) pctfree 0;
commit work; 

create index tpcds.wr_refundedcust on tpcds.web_returns
    (wr_refunded_customer_sk) pctfree 0;
commit work; 

create index tpcds.wr_refundedcdemo on tpcds.web_returns
    (wr_refunded_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.wr_refundedhdemo on tpcds.web_returns
    (wr_refunded_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.wr_refundedaddr on tpcds.web_returns
    (wr_refunded_addr_sk) pctfree 0;
commit work; 

create index tpcds.wr_returningcust on tpcds.web_returns
    (wr_returning_customer_sk) pctfree 0;
commit work; 

create index tpcds.wr_returningcdemo on tpcds.web_returns
    (wr_returning_cdemo_sk) pctfree 0;
commit work; 

create index tpcds.wr_returninghdemo on tpcds.web_returns
    (wr_returning_hdemo_sk) pctfree 0;
commit work; 

create index tpcds.wr_returningaddr on tpcds.web_returns
    (wr_returning_addr_sk) pctfree 0;
commit work; 

create index tpcds.wr_webpage on tpcds.web_returns
    (wr_web_page_sk) pctfree 0;
commit work; 

create index tpcds.wr_reason on tpcds.web_returns
    (wr_reason_sk) pctfree 0;
commit work; 

create index tpcds.wr_order on tpcds.web_returns
    (wr_order_number) pctfree 0;
commit work;

create index tpcds.inv_invdate on tpcds.inventory
    (inv_date_sk) pctfree 0;
commit work; 

create index tpcds.inv_invitem on tpcds.inventory
    (inv_item_sk) pctfree 0;
commit work; 

create index tpcds.inv_warehouse on tpcds.inventory
    (inv_warehouse_sk) pctfree 0;
commit work; 

------------------------------------------------------------
--  indexes based on date columns
------------------------------------------------------------
create index tpcds.i_recstartdate on tpcds.item
    (i_rec_start_date) pctfree 0;
commit work; 

create index tpcds.i_recenddate on tpcds.item
    (i_rec_end_date) pctfree 0;
commit work; 

create index tpcds.d_date on tpcds.date_dim
    (d_date) pctfree 0;
commit work; 

create index tpcds.d_date2 on tpcds.date_dim2
    (d_date) pctfree 0;
commit work; 

create index tpcds.s_recstartdate on tpcds.store
    (s_rec_start_date) pctfree 0;
commit work; 

create index tpcds.s_recenddate on tpcds.store
    (s_rec_end_date) pctfree 0;
commit work; 

create index tpcds.cc_recstartdate on tpcds.call_center
    (cc_rec_start_date) pctfree 0;
commit work; 

create index tpcds.cc_recenddate on tpcds.call_center
    (cc_rec_end_date) pctfree 0;
commit work; 

create index tpcds.web_recstartdate on tpcds.web_site
    (web_rec_start_date) pctfree 0;
commit work; 

create index tpcds.web_recenddate on tpcds.web_site
    (web_rec_end_date) pctfree 0;
commit work; 

create index tpcds.wp_recstartdate on tpcds.web_page
    (wp_rec_start_date) pctfree 0;
commit work; 

create index tpcds.wp_recenddate on tpcds.web_page
    (wp_rec_end_date) pctfree 0;
commit work; 

------------------------------------------------------------
--  indexes based on single columns of compound primary keys
------------------------------------------------------------
--create index tpcds.cs_order on tpcds.catalog_sales
--        (cs_order_number) pctfree 0;
--commit work;

------------------------------------------------------------
--  indexes of other "id" columns
------------------------------------------------------------
create index tpcds.ca_ai on tpcds.customer_address
     (ca_address_id) pctfree 0;
commit work;

create index tpcds.i_ii on tpcds.item
     (i_item_id) pctfree 0;
commit work;

create index tpcds.i_bi on tpcds.item
     (i_brand_id) pctfree 0;
commit work;

create index tpcds.i_clai on tpcds.item
     (i_class_id) pctfree 0;
commit work;

create index tpcds.i_cati on tpcds.item
     (i_category_id) pctfree 0;
commit work;

create index tpcds.i_mafi on tpcds.item
     (i_manufact_id) pctfree 0;
commit work;

create index tpcds.i_magi on tpcds.item
     (i_manager_id) pctfree 0;
commit work;

create index tpcds.dd_di on tpcds.date_dim
     (d_date_id) pctfree 0;
commit work;

create index tpcds.dd_di2 on tpcds.date_dim2
     (d_date_id) pctfree 0;
commit work;

create index tpcds.wh_wi on tpcds.warehouse
     (w_warehouse_id) pctfree 0;
commit work;

create index tpcds.sm_smi on tpcds.ship_mode
     (sm_ship_mode_id) pctfree 0;
commit work;

create index tpcds.td_ti on tpcds.time_dim
     (t_time_id) pctfree 0;
commit work;

create index tpcds.r_ri on tpcds.reason
     (r_reason_id) pctfree 0;
commit work;

create index tpcds.p_pi on tpcds.promotion
     (p_promo_id) pctfree 0;
commit work;

create index tpcds.s_si on tpcds.store
     (s_store_id) pctfree 0;
commit work;

create index tpcds.s_mi on tpcds.store
     (s_market_id) pctfree 0;
commit work;

create index tpcds.s_di on tpcds.store
     (s_division_id) pctfree 0;
commit work;

create index tpcds.s_ci on tpcds.store
     (s_company_id) pctfree 0;
commit work;

create index tpcds.cc_cci on tpcds.call_center
     (cc_call_center_id) pctfree 0;
commit work;

create index tpcds.cc_mi on tpcds.call_center
     (cc_mkt_id) pctfree 0;
commit work;

create index tpcds.cc_ci on tpcds.call_center
     (cc_company) pctfree 0;
commit work;

create index tpcds.cc_di on tpcds.call_center
     (cc_division) pctfree 0;
commit work;

create index tpcds.c_ci on tpcds.customer
     (c_customer_id) pctfree 0;
commit work;

create index tpcds.web_si on tpcds.web_site
     (web_site_id) pctfree 0;
commit work;

create index tpcds.web_mi on tpcds.web_site
     (web_mkt_id) pctfree 0;
commit work;

create index tpcds.web_ci on tpcds.web_site
     (web_company_id) pctfree 0;
commit work;

create index tpcds.cp_cpi on tpcds.catalog_page
     (cp_catalog_page_id) pctfree 0;
commit work;

create index tpcds.wp_cpi on tpcds.web_page
     (wp_web_page_id) pctfree 0;
commit work;

connect reset;
