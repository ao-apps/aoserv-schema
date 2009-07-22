create sequence business_servers_pkey_seq cycle;
grant all on business_servers_pkey_seq to aoadmin;
grant select, update on business_servers_pkey_seq to aoserv_app;

create table business_servers (
  pkey integer
    default nextval('business_servers_pkey_seq')
    constraint business_servers_pkey primary key,
  accounting text not null,
  server integer not null,
  is_default bool not null,
  can_control_apache bool not null,
  can_control_cron bool not null,
  can_control_mysql bool not null,
  can_control_postgresql bool not null,
  can_control_xfs bool not null,
  can_control_xvfb bool not null,
  can_vnc_console bool not null default false,
  unique(accounting, server)
);
grant all on business_servers to aoadmin;
grant select, update, insert, delete on business_servers to aoserv_app;
