/*
 * aoindustries.com - https://aoindustries.com/
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoindustries.com.
 *
 * aoindustries.com is non-exclusive, non-transferable, non-redistributable.
 *
 * aoindustries.com is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 */

/**********************************************************************
 *
 * Travel and compensation is recorded in these tables.
 *
 *********************************************************************/
create table vehicles (
  "name" text
    primary key,
  "year" integer
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
