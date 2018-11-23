create table monitoring."IpAddressMonitoring" (
  id integer
    primary key,
  enabled boolean
    not null
    default true,
  "pingMonitorEnabled" boolean
    not null
    default true,
  "checkBlacklistsOverSmtp" boolean
    not null
    default true,
  "verifyDnsPtr" boolean
    not null
    default true,
  "verifyDnsA" boolean
    not null
    default true
);

grant all            on monitoring."IpAddressMonitoring" to aoadmin;
grant select, update on monitoring."IpAddressMonitoring" to aoserv_app;
