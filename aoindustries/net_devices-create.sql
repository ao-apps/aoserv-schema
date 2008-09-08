create sequence net_devices_pkey_seq cycle;
grant all on net_devices_pkey_seq to aoadmin;
grant select, update on net_devices_pkey_seq to aoserv_app;

create table net_devices (
  pkey integer
    default nextval('net_devices_pkey_seq')
    constraint net_devices_pkey primary key,
  server integer
    not null,
  device_id text
    not null,
  description text
    not null,
  delete_route text,
  gateway text,
  netmask text
    not null,
  network text,
  broadcast text,
  mac_address text,
  max_bit_rate int8,
  unique(server, device_id)
);
grant all on net_devices to aoadmin;
grant select on net_devices to aoserv_app;
