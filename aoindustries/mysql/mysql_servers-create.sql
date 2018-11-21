create sequence mysql_servers_pkey_seq cycle;
grant all            on mysql_servers_pkey_seq to aoadmin;
grant select, update on mysql_servers_pkey_seq to aoserv_app;

create table mysql_servers (
  pkey integer
    default nextval('mysql_servers_pkey_seq')
    primary key,
  name text
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
  unique (ao_server, name)
);
grant all                            on mysql_servers to aoadmin;
grant select, insert, update, delete on mysql_servers to aoserv_app;
