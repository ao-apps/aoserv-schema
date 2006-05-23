create sequence packages_pkey_seq cycle;
grant all on packages_pkey_seq to aoadmin;
grant select, update on packages_pkey_seq to aoserv_app;

create table packages (
  pkey integer
    default nextval('packages_pkey_seq')
    constraint packages_pkey primary key,
  name text
    not null
    unique,
  accounting text
    not null,
  package_definition integer
    not null,
  created timestamp
    not null
    default now(),
  created_by text
    not null,
  daily_smtp_in_limit int
    not null,
  daily_smtp_in_bandwidth_limit int8
    not null,
  daily_smtp_out_limit int
    not null,
  daily_smtp_out_bandwidth_limit int8
    not null,
  disable_log integer
);
grant all on packages to aoadmin;
grant select, insert, update, delete on packages to aoserv_app;
