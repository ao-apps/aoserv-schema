create table payment."CountryCode" (
  code character(2)
    primary key,
  "name" text
    not null,
  charge_com_supported boolean
    not null,
  charge_com_name text
);
grant all    on payment."CountryCode" to aoadmin;
grant select on payment."CountryCode" to aoserv_app;
