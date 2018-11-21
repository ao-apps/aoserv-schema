create sequence         billing.packages_pkey_seq cycle;
grant all            on billing.packages_pkey_seq to aoadmin;
grant select, update on billing.packages_pkey_seq to aoserv_app;

create table packages (
  pkey integer
    default nextval('billing.packages_pkey_seq')
    primary key,
  "name" text
    not null
    unique,
  accounting text
    not null,
  package_definition integer
    not null,
  created timestamp with time zone
    not null
    default now(),
  created_by text
    not null,
  disable_log integer,
  email_in_burst integer,
  email_in_rate real,
  email_out_burst integer,
  email_out_rate real,
  email_relay_burst integer,
  email_relay_rate real
);
grant all                            on packages to aoadmin;
grant select, insert, update, delete on packages to aoserv_app;
grant select                         on packages to kaori;
