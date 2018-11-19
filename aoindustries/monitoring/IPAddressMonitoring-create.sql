create table monitoring."IPAddressMonitoring" (
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

grant all            on monitoring."IPAddressMonitoring" to aoadmin;
grant select, update on monitoring."IPAddressMonitoring" to aoserv_app;
