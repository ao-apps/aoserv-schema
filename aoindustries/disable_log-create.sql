create sequence disable_log_pkey_seq cycle;
grant all on disable_log_pkey_seq to aoadmin;
grant select, update on disable_log_pkey_seq to aoserv_app;

create table disable_log (
  pkey integer
    default nextval('disable_log_pkey_seq')
    constraint disable_log_pkey primary key,
  time timestamp with time zone
    not null
    default now(),
  accounting text
    not null,
  disabled_by text
    not null,
  disable_reason text
);
grant all on disable_log to aoadmin;
grant select, insert, delete on disable_log to aoserv_app;
