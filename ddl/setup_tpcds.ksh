#!/bin/ksh
# the following line enables collecting column group stats 
# using runstats command through discovery of pairwise cgs
db2set db2_statistics=discover:on
db2 -tvf 01-crdb.sql -z 01-crdb.log
sleep 60
db2 -tvf 02-crbp.sql -z 02-crbp.log
db2 -tvf 03-crdbp.sql -z 03-crdbp.log
db2 -tvf 04-crts.sql -z 04-crts.log
db2 -tvf 05-crtb.sql -z 05-crtb.log
bash 06-load.sh
db2 -tvf 07-crix.sql -z 07-crix.log
db2 -tvf 08-add-correlated-columns.sql -z 08-add-correlated-columns.log
db2 -tvf 09-runstats.ddl -z 09-runstats.log
db2 -tvf 10-pkfk-2dd.sql -z 10-pkfk-2dd.log
