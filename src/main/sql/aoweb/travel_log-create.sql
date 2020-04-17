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

create sequence travel_log_pkey_seq cycle;
grant all            on travel_log_pkey_seq to aoadmin;
grant select, update on travel_log_pkey_seq to aoweb_app;

create table travel_log (
  pkey integer
    default nextval('travel_log_pkey_seq')
    primary key,
  traveler_name text not null,
  traveler_phone text not null,
  start_date date not null,
  end_date date,
  perdiem_days integer,
  perdiem_rate numeric(9,2),
  perdiem_total numeric(9,2),
  vehicle text,
  vehicle_odometer_start integer,
  vehicle_odometer_end integer,
  vehicle_odometer_coefficient real,
  vehicle_miles integer,
  vehicle_mileage_rate numeric(9,2),
  vehicle_mileage_total numeric(9,2),
  reimburse_total numeric(9,2),
  reimburse_date date,
  reimburse_check_number text
);
grant all on travel_log to aoadmin;
