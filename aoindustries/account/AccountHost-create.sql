create sequence         account."AccountHost_id_seq" cycle;
grant all            on account."AccountHost_id_seq" to aoadmin;
grant select, update on account."AccountHost_id_seq" to aoserv_app;
grant select, update on account."AccountHost_id_seq" to infrastructure;

create table account."AccountHost" (
  id integer
    default nextval('account."AccountHost_id_seq"')
    primary key,
  accounting text not null,
  server integer not null,
  is_default boolean not null,
  can_control_apache boolean not null default false,
  can_control_cron boolean not null default false,
  can_control_mysql boolean not null default false,
  can_control_postgresql boolean not null default false,
  can_control_xfs boolean not null default false,
  can_control_xvfb boolean not null default false,
  can_vnc_console boolean not null default false,
  can_control_virtual_server boolean not null default false,
  unique(accounting, server)
);
grant all                            on account."AccountHost" to aoadmin;
grant select, update, insert, delete on account."AccountHost" to aoserv_app;
grant select, insert                 on account."AccountHost" to infrastructure;
