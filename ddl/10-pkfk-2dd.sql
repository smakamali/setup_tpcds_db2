connect to tpcds;

set current schema TPCDS;

ALTER TABLE "TPCDS"."CALL_CENTER" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("CC_CLOSED_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CALL_CENTER" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("CC_OPEN_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."CATALOG_PAGE"

ALTER TABLE "TPCDS"."CATALOG_PAGE" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("CP_START_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_PAGE" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("CP_END_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."CATALOG_RETURNS"

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("CR_RETURNED_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK10" FOREIGN KEY
		("CR_RETURNING_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK11" FOREIGN KEY
		("CR_RETURNING_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK12" FOREIGN KEY
		("CR_RETURNING_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK13" FOREIGN KEY
		("CR_CALL_CENTER_SK")
	REFERENCES "TPCDS"."CALL_CENTER"
		("CC_CALL_CENTER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK14" FOREIGN KEY
		("CR_CATALOG_PAGE_SK")
	REFERENCES "TPCDS"."CATALOG_PAGE"
		("CP_CATALOG_PAGE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK15" FOREIGN KEY
		("CR_SHIP_MODE_SK")
	REFERENCES "TPCDS"."SHIP_MODE"
		("SM_SHIP_MODE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK16" FOREIGN KEY
		("CR_WAREHOUSE_SK")
	REFERENCES "TPCDS"."WAREHOUSE"
		("W_WAREHOUSE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK17" FOREIGN KEY
		("CR_REASON_SK")
	REFERENCES "TPCDS"."REASON"
		("R_REASON_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("CR_RETURNED_TIME_SK")
	REFERENCES "TPCDS"."TIME_DIM"
		("T_TIME_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK4" FOREIGN KEY
		("CR_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("CR_REFUNDED_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK6" FOREIGN KEY
		("CR_REFUNDED_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK7" FOREIGN KEY
		("CR_REFUNDED_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK8" FOREIGN KEY
		("CR_REFUNDED_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_RETURNS" 
	ADD CONSTRAINT "FK9" FOREIGN KEY
		("CR_RETURNING_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."CATALOG_SALES"

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("CS_SOLD_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK10" FOREIGN KEY
		("CS_SHIP_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK11" FOREIGN KEY
		("CS_SHIP_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK12" FOREIGN KEY
		("CS_CALL_CENTER_SK")
	REFERENCES "TPCDS"."CALL_CENTER"
		("CC_CALL_CENTER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK13" FOREIGN KEY
		("CS_CATALOG_PAGE_SK")
	REFERENCES "TPCDS"."CATALOG_PAGE"
		("CP_CATALOG_PAGE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK14" FOREIGN KEY
		("CS_SHIP_MODE_SK")
	REFERENCES "TPCDS"."SHIP_MODE"
		("SM_SHIP_MODE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK15" FOREIGN KEY
		("CS_WAREHOUSE_SK")
	REFERENCES "TPCDS"."WAREHOUSE"
		("W_WAREHOUSE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK16A" FOREIGN KEY
		("CS_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK17" FOREIGN KEY
		("CS_PROMO_SK")
	REFERENCES "TPCDS"."PROMOTION"
		("P_PROMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("CS_SOLD_TIME_SK")
	REFERENCES "TPCDS"."TIME_DIM"
		("T_TIME_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK3" FOREIGN KEY
		("CS_SHIP_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK4" FOREIGN KEY
		("CS_BILL_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("CS_BILL_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK6" FOREIGN KEY
		("CS_BILL_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK7" FOREIGN KEY
		("CS_BILL_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK8" FOREIGN KEY
		("CS_SHIP_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CATALOG_SALES" 
	ADD CONSTRAINT "FK9" FOREIGN KEY
		("CS_SHIP_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."CUSTOMER"

ALTER TABLE "TPCDS"."CUSTOMER" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("C_CURRENT_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CUSTOMER" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("C_CURRENT_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CUSTOMER" 
	ADD CONSTRAINT "FK3" FOREIGN KEY
		("C_CURRENT_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CUSTOMER" 
	ADD CONSTRAINT "FK4" FOREIGN KEY
		("C_FIRST_SHIPTO_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."CUSTOMER" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("C_FIRST_SALES_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"

ALTER TABLE "TPCDS"."HOUSEHOLD_DEMOGRAPHICS" 
	ADD CONSTRAINT "FK" FOREIGN KEY
		("HD_INCOME_BAND_SK")
	REFERENCES "TPCDS"."INCOME_BAND"
		("IB_INCOME_BAND_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."INVENTORY"

ALTER TABLE "TPCDS"."INVENTORY" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("INV_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."INVENTORY" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("INV_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."INVENTORY" 
	ADD CONSTRAINT "FK3" FOREIGN KEY
		("INV_WAREHOUSE_SK")
	REFERENCES "TPCDS"."WAREHOUSE"
		("W_WAREHOUSE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."PROMOTION"

ALTER TABLE "TPCDS"."PROMOTION" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("P_START_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."PROMOTION" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("P_END_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."PROMOTION" 
	ADD CONSTRAINT "FK3" FOREIGN KEY
		("P_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."STORE"

ALTER TABLE "TPCDS"."STORE" 
	ADD CONSTRAINT "FK" FOREIGN KEY
		("S_CLOSED_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."STORE_RETURNS"

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("SR_RETURNED_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("SR_RETURN_TIME_SK")
	REFERENCES "TPCDS"."TIME_DIM"
		("T_TIME_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK3A" FOREIGN KEY
		("SR_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK4" FOREIGN KEY
		("SR_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("SR_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK6" FOREIGN KEY
		("SR_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK7" FOREIGN KEY
		("SR_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK8" FOREIGN KEY
		("SR_STORE_SK")
	REFERENCES "TPCDS"."STORE"
		("S_STORE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_RETURNS" 
	ADD CONSTRAINT "FK9" FOREIGN KEY
		("SR_REASON_SK")
	REFERENCES "TPCDS"."REASON"
		("R_REASON_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."STORE_SALES"

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("SS_SOLD_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("SS_SOLD_TIME_SK")
	REFERENCES "TPCDS"."TIME_DIM"
		("T_TIME_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK3A" FOREIGN KEY
		("SS_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK4" FOREIGN KEY
		("SS_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("SS_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK6" FOREIGN KEY
		("SS_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK7" FOREIGN KEY
		("SS_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK8" FOREIGN KEY
		("SS_STORE_SK")
	REFERENCES "TPCDS"."STORE"
		("S_STORE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."STORE_SALES" 
	ADD CONSTRAINT "FK9" FOREIGN KEY
		("SS_PROMO_SK")
	REFERENCES "TPCDS"."PROMOTION"
		("P_PROMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."WEB_PAGE"

ALTER TABLE "TPCDS"."WEB_PAGE" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("WP_CREATION_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_PAGE" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("WP_ACCESS_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_PAGE" 
	ADD CONSTRAINT "FK3" FOREIGN KEY
		("WP_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."WEB_RETURNS"

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("WR_RETURNED_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK10" FOREIGN KEY
		("WR_RETURNING_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK11" FOREIGN KEY
		("WR_RETURNING_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK12" FOREIGN KEY
		("WR_WEB_PAGE_SK")
	REFERENCES "TPCDS"."WEB_PAGE"
		("WP_WEB_PAGE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK13" FOREIGN KEY
		("WR_REASON_SK")
	REFERENCES "TPCDS"."REASON"
		("R_REASON_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("WR_RETURNED_TIME_SK")
	REFERENCES "TPCDS"."TIME_DIM"
		("T_TIME_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK3A" FOREIGN KEY
		("WR_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK4" FOREIGN KEY
		("WR_REFUNDED_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("WR_REFUNDED_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK6" FOREIGN KEY
		("WR_REFUNDED_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK7" FOREIGN KEY
		("WR_REFUNDED_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK8" FOREIGN KEY
		("WR_RETURNING_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_RETURNS" 
	ADD CONSTRAINT "FK9" FOREIGN KEY
		("WR_RETURNING_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."WEB_SALES"

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("WS_SOLD_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK10" FOREIGN KEY
		("WS_SHIP_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK11" FOREIGN KEY
		("WS_SHIP_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK12" FOREIGN KEY
		("WS_SHIP_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK13" FOREIGN KEY
		("WS_WEB_PAGE_SK")
	REFERENCES "TPCDS"."WEB_PAGE"
		("WP_WEB_PAGE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK14" FOREIGN KEY
		("WS_WEB_SITE_SK")
	REFERENCES "TPCDS"."WEB_SITE"
		("WEB_SITE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK15" FOREIGN KEY
		("WS_SHIP_MODE_SK")
	REFERENCES "TPCDS"."SHIP_MODE"
		("SM_SHIP_MODE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK16" FOREIGN KEY
		("WS_WAREHOUSE_SK")
	REFERENCES "TPCDS"."WAREHOUSE"
		("W_WAREHOUSE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK17" FOREIGN KEY
		("WS_PROMO_SK")
	REFERENCES "TPCDS"."PROMOTION"
		("P_PROMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("WS_SOLD_TIME_SK")
	REFERENCES "TPCDS"."TIME_DIM"
		("T_TIME_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK3" FOREIGN KEY
		("WS_SHIP_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK4A" FOREIGN KEY
		("WS_ITEM_SK")
	REFERENCES "TPCDS"."ITEM"
		("I_ITEM_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK5" FOREIGN KEY
		("WS_BILL_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK6" FOREIGN KEY
		("WS_BILL_CDEMO_SK")
	REFERENCES "TPCDS"."CUSTOMER_DEMOGRAPHICS"
		("CD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK7" FOREIGN KEY
		("WS_BILL_HDEMO_SK")
	REFERENCES "TPCDS"."HOUSEHOLD_DEMOGRAPHICS"
		("HD_DEMO_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK8" FOREIGN KEY
		("WS_BILL_ADDR_SK")
	REFERENCES "TPCDS"."CUSTOMER_ADDRESS"
		("CA_ADDRESS_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SALES" 
	ADD CONSTRAINT "FK9" FOREIGN KEY
		("WS_SHIP_CUSTOMER_SK")
	REFERENCES "TPCDS"."CUSTOMER"
		("C_CUSTOMER_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

-- DDL Statements for Foreign Keys on Table "TPCDS"."WEB_SITE"

ALTER TABLE "TPCDS"."WEB_SITE" 
	ADD CONSTRAINT "FK1" FOREIGN KEY
		("WEB_OPEN_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;

ALTER TABLE "TPCDS"."WEB_SITE" 
	ADD CONSTRAINT "FK2" FOREIGN KEY
		("WEB_CLOSE_DATE_SK")
	REFERENCES "TPCDS"."DATE_DIM2"
		("D_DATE_SK")
	ON DELETE NO ACTION
	ON UPDATE NO ACTION
	NOT ENFORCED
	TRUSTED
	ENABLE QUERY OPTIMIZATION;