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
