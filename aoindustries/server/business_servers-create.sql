create sequence business_servers_pkey_seq cycle;
grant all            on business_servers_pkey_seq to aoadmin;
grant select, update on business_servers_pkey_seq to aoserv_app;

create table business_servers (
  pkey integer
    default nextval('business_servers_pkey_seq')
    primary key,
  accounting text not null,
  server integer not null,
  is_default boolean not null,
  can_control_apache boolean not null,
  can_control_cron boolean not null,
  can_control_mysql boolean not null,
  can_control_postgresql boolean not null,
  can_control_xfs boolean not null,
  can_control_xvfb boolean not null,
  can_vnc_console boolean not null default false,
  can_control_virtual_server boolean not null default false,
  unique(accounting, server)
);
grant all                            on business_servers to aoadmin;
grant select, update, insert, delete on business_servers to aoserv_app;
