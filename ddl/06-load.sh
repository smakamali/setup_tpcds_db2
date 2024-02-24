#!/bin/ksh

export DATA_DIR="`pwd`/../data-1Gb";
export LOG_DIR="`pwd`/../log";

db2 connect to tpcds

for name in date_dim date_dim2 customer_address customer_demographics item warehouse ship_mode time_dim reason income_band promotion store call_center customer web_site catalog_page store_returns household_demographics web_page inventory catalog_returns web_returns web_sales catalog_sales store_sales; do
echo "Loading data of table $name"
db2 "load from $DATA_DIR/$name.dat of del modified by coldel| fastparse savecount 10000 messages $LOG_DIR/$name.msg replace into tpcds.$name nonrecoverable"
db2 commit
done

#db2 "load from $DATA_DIR/date_dim.dat of del modified by coldel| fastparse messages $LOG_DIR/date_dim.msg replace into tpcds.date_dim nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/customer_address.dat of del modified by coldel| fastparse messages $LOG_DIR/customer_address.msg replace into tpcds.customer_address nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/customer_demographics.dat of del modified by coldel| fastparse messages $LOG_DIR/customer_demographics.msg replace into tpcds.customer_demographics nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/item.dat of del modified by coldel| fastparse messages $LOG_DIR/item.msg replace into tpcds.item nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/warehouse.dat of del modified by coldel| fastparse messages $LOG_DIR/warehouse.msg replace into tpcds.warehouse nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/ship_mode.dat of del modified by coldel| fastparse messages $LOG_DIR/ship_mode.msg replace into tpcds.ship_mode nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/time_dim.dat of del modified by coldel| fastparse messages $LOG_DIR/time_dim.msg replace into tpcds.time_dim nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/reason.dat of del modified by coldel| fastparse messages $LOG_DIR/reason.msg replace into tpcds.reason nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/income_band.dat of del modified by coldel| fastparse messages $LOG_DIR/income_band.msg replace into tpcds.income_band nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/promotion.dat of del modified by coldel| fastparse messages $LOG_DIR/promotion.msg replace into tpcds.promotion nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/store.dat of del modified by coldel| fastparse messages $LOG_DIR/store.msg replace into tpcds.store nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/call_center.dat of del modified by coldel| fastparse messages $LOG_DIR/call_center.msg replace into tpcds.call_center nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/customer.dat of del modified by coldel| fastparse messages $LOG_DIR/customer.msg replace into tpcds.customer nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/web_site.dat of del modified by coldel| fastparse messages $LOG_DIR/web_site.msg replace into tpcds.web_site nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/catalog_page.dat of del modified by coldel| fastparse messages $LOG_DIR/catalog_page.msg replace into tpcds.catalog_page nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/store_returns.dat of del modified by coldel| fastparse messages $LOG_DIR/store_returns.msg replace into tpcds.store_returns nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/household_demographics.dat of del modified by coldel| fastparse messages $LOG_DIR/household_demographics.msg replace into tpcds.household_demographics nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/web_page.dat of del modified by coldel| fastparse messages $LOG_DIR/web_page.msg replace into tpcds.web_page nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/inventory.dat of del modified by coldel| fastparse messages $LOG_DIR/inventory.msg replace into tpcds.inventory nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/catalog_returns.dat of del modified by coldel| fastparse messages $LOG_DIR/catalog_returns.msg replace into tpcds.catalog_returns nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/web_returns.dat of del modified by coldel| fastparse messages $LOG_DIR/web_returns.msg replace into tpcds.web_returns nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/web_sales.dat of del modified by coldel| fastparse messages $LOG_DIR/web_sales.msg replace into tpcds.web_sales nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/catalog_sales.dat of del modified by coldel| fastparse messages $LOG_DIR/catalog_sales.msg replace into tpcds.catalog_sales nonrecoverable"
#db2 commit

#db2 "load from $DATA_DIR/store_sales.dat of del modified by coldel| fastparse messages $LOG_DIR/store_sales.msg replace into tpcds.store_sales nonrecoverable"
#db2 commit

db2 connect reset
db2 terminate

