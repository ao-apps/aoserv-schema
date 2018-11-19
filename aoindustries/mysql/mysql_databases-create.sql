create sequence mysql_databases_pkey_seq cycle;
grant all            on mysql_databases_pkey_seq to aoadmin;
grant select, update on mysql_databases_pkey_seq to aoserv_app;

create table mysql_databases (
  pkey integer
    default nextval('mysql_databases_pkey_seq')
    constraint mysql_databases_pkey primary key,
  "name" text
    not null,
  mysql_server integer
    not null,
  package text
    not null,
  max_check_table_alert_level text
    not null
    default 'UNKNOWN'
    check (
      max_check_table_alert_level in ('NONE', 'LOW', 'MEDIUM', 'HIGH', 'CRITICAL', 'UNKNOWN')
    ),
  unique (mysql_server, "name")
);
grant all                            on mysql_databases to aoadmin;
grant select, insert, update, delete on mysql_databases to aoserv_app;
