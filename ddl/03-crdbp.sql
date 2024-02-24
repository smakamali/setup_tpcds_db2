connect to tpcds;
create database partition group PDPG on dbpartitionnums (1 TO 2);
create database partition group SDPG on dbpartitionnum (0);
commit work;
connect reset;
