create sequence         billing."Package_id_seq" cycle;
grant all            on billing."Package_id_seq" to aoadmin;
grant select, update on billing."Package_id_seq" to aoserv_app;

create table billing."Package" (
  id integer
    default nextval('billing."Package_id_seq"')
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
grant all                            on billing."Package" to aoadmin;
-- TODO: Is delete used?
grant select, insert, update, delete on billing."Package" to aoserv_app;
grant select                         on billing."Package" to billing;
