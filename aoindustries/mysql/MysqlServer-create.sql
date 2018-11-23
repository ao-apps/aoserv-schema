create sequence         mysql."MysqlServer_pkey_seq" cycle;
grant all            on mysql."MysqlServer_pkey_seq" to aoadmin;
grant select, update on mysql."MysqlServer_pkey_seq" to aoserv_app;

create table mysql."MysqlServer" (
  -- TODO: net_bind is both non-null and unique, so this pkey is unnecessary
  pkey integer
    default nextval('mysql."MysqlServer_pkey_seq"')
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  max_connections integer
    not null,
  net_bind integer
    not null
    unique,
  package text
    not null,
  unique (ao_server, "name")
);
grant all                            on mysql."MysqlServer" to aoadmin;
-- TODO: insert, update, delete used at this time?
grant select, insert, update, delete on mysql."MysqlServer" to aoserv_app;
