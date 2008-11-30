create sequence ip_addresses_pkey_seq cycle;
grant all on ip_addresses_pkey_seq to aoadmin;
grant select, update on ip_addresses_pkey_seq to aoserv_app;

create table ip_addresses (
  pkey integer
    default nextval('ip_addresses_pkey_seq')
    constraint ip_addresses_pkey primary key,
  ip_address text
    not null,
  net_device int,
  is_alias bool
    not null,
  hostname text
    not null,
  package text
    not null,
  created timestamp
    not null,
  available bool
    not null,
  is_overflow bool
    not null,
  is_dhcp bool
    not null,
  ping_monitor_enabled bool not null,
  external_ip_address text,
  netmask text
    not null,
  unique(ip_address, net_device)
);
grant all on ip_addresses to aoadmin;
grant select, update on ip_addresses to aoserv_app;
