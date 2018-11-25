create sequence         postgresql."Database_pkey_seq" cycle;
grant all            on postgresql."Database_pkey_seq" to aoadmin;
grant select, update on postgresql."Database_pkey_seq" to aoserv_app;

create table postgresql."Database" (
  pkey integer
    default nextval('postgresql."Database_pkey_seq"')
    primary key,
  "name" text
    not null,
  postgres_server integer
    not null,
  datdba integer
    not null,
  encoding integer
    not null,
  is_template boolean
    not null,
  allow_conn boolean
    not null,
  enable_postgis boolean
    not null,
  unique ("name", postgres_server)
);
grant all                            on postgresql."Database" to aoadmin;
grant select, insert, update, delete on postgresql."Database" to aoserv_app;
