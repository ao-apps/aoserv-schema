create sequence         mysql."Database_id_seq" cycle;
grant all            on mysql."Database_id_seq" to aoadmin;
grant select, update on mysql."Database_id_seq" to aoserv_app;
grant select, update on mysql."Database_id_seq" to management;

create table mysql."Database" (
  id integer
    default nextval('mysql."Database_id_seq"')
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
grant all                            on mysql."Database" to aoadmin;
grant select, insert, update, delete on mysql."Database" to aoserv_app;
grant select, insert, delete         on mysql."Database" to management;
