create sequence         account."DisableLog_id_seq" cycle;
grant all            on account."DisableLog_id_seq" to aoadmin;
grant select, update on account."DisableLog_id_seq" to aoserv_app;

create table account."DisableLog" (
  id integer
    default nextval('account."DisableLog_id_seq"')
    primary key,
  "time" timestamp with time zone
    not null
    default now(),
  accounting text
    not null,
  disabled_by text
    not null,
  disable_reason text
);
grant all                    on account."DisableLog" to aoadmin;
grant select, insert, delete on account."DisableLog" to aoserv_app;
