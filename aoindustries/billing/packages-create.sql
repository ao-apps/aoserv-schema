create sequence packages_pkey_seq cycle;
grant all            on packages_pkey_seq to aoadmin;
grant select, update on packages_pkey_seq to aoserv_app;

create table packages (
  pkey integer
    default nextval('packages_pkey_seq')
    primary key,
  name text
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
  email_in_rate float4,
  email_out_burst integer,
  email_out_rate float4,
  email_relay_burst integer,
  email_relay_rate float4
);
grant all                            on packages to aoadmin;
grant select, insert, update, delete on packages to aoserv_app;
grant select                         on packages to kaori;
