/**********************************************************************
 *
 * Travel and compensation is recorded in these tables.
 *
 *********************************************************************/
create table vehicles (
  name text
    constraint travel_vehicles_pkey
      primary key,
  year integer
    not null,
  make text
    not null,
  model text
    not null,
  vin text,
  license_state character(2)
    not null,
  license_number text,
  owner_name text
    not null,
  owner_phone text
    not null,
  gross_weight integer,
  tow_weight integer,
  tow_plug_type text,
  current_odometer_coefficient real
    not null
    default 1.0
);
grant all on vehicles to aoadmin;
