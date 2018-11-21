create table country_codes (
  code character(2)
    primary key,
  "name" text
    not null,
  charge_com_supported boolean
    not null,
  charge_com_name text
);
grant all    on country_codes to aoadmin;
grant select on country_codes to aoserv_app;
