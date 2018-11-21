create sequence net_devices_pkey_seq cycle;
grant all            on net_devices_pkey_seq to aoadmin;
grant select, update on net_devices_pkey_seq to aoserv_app;

create table net_devices (
  pkey integer
    default nextval('net_devices_pkey_seq')
    primary key,
  server integer
    not null,
  "deviceID" text
    not null,
  description text
    not null,
  delete_route text,
  gateway text,
  network text,
  broadcast text,
  mac_address text,
  max_bit_rate int8,
  monitoring_bit_rate_low int8,
  monitoring_bit_rate_medium int8 check (monitoring_bit_rate_medium is null or monitoring_bit_rate_low is not null and monitoring_bit_rate_medium>monitoring_bit_rate_low),
  monitoring_bit_rate_high int8 check (monitoring_bit_rate_high is null or monitoring_bit_rate_medium is not null and monitoring_bit_rate_high>monitoring_bit_rate_medium),
  monitoring_bit_rate_critical int8 check (monitoring_bit_rate_critical is null or monitoring_bit_rate_high is not null and monitoring_bit_rate_critical>monitoring_bit_rate_high),
  monitoring_enabled boolean
    not null
    default true,
  unique(server, "deviceID")
);
grant all    on net_devices to aoadmin;
grant select on net_devices to aoserv_app;
