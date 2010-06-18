create table country_codes (
  code char(2) primary key,
  "name" text not null,
  charge_com_supported bool not null,
  charge_com_name text
);
grant all on country_codes to aoadmin;
grant all on country_codes to aoserv_app;
