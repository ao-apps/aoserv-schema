create sequence business_servers_pkey_seq cycle;
grant all on business_servers_pkey_seq to aoadmin;
grant select, update on business_servers_pkey_seq to aoserv_app;

create table business_servers (
  pkey integer default nextval('business_servers_pkey_seq') primary key,
  accounting text not null,
  server integer not null,
  is_default bool not null,
  can_vnc_console bool not null default false
);
grant all on business_servers to aoadmin;
grant select, update, insert, delete on business_servers to aoserv_app;
