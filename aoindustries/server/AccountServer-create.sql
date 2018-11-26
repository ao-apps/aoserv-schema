create sequence         server."AccountServer_id_seq" cycle;
grant all            on server."AccountServer_id_seq" to aoadmin;
grant select, update on server."AccountServer_id_seq" to aoserv_app;

create table server."AccountServer" (
  id integer
    default nextval('server."AccountServer_id_seq"')
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
grant all                            on server."AccountServer" to aoadmin;
grant select, update, insert, delete on server."AccountServer" to aoserv_app;
