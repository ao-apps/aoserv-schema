create sequence         mysql."MysqlDatabase_pkey_seq" cycle;
grant all            on mysql."MysqlDatabase_pkey_seq" to aoadmin;
grant select, update on mysql."MysqlDatabase_pkey_seq" to aoserv_app;

create table mysql."MysqlDatabase" (
  pkey integer
    default nextval('mysql."MysqlDatabase_pkey_seq"')
    primary key,
  "name" text
    not null,
  mysql_server integer
    not null,
  package text
    not null,
  max_check_table_alert_level monitoring."AlertLevel"
    not null
    default 'UNKNOWN',
  unique (mysql_server, "name")
);
grant all                            on mysql."MysqlDatabase" to aoadmin;
grant select, insert, update, delete on mysql."MysqlDatabase" to aoserv_app;
