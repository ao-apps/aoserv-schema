create table "net.monitoring"."IpAddressMonitoring" (
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

grant all                            on "net.monitoring"."IpAddressMonitoring" to aoadmin;
grant select, update                 on "net.monitoring"."IpAddressMonitoring" to aoserv_app;
grant select, insert, update, delete on "net.monitoring"."IpAddressMonitoring" to infrastructure;
grant select, insert, update         on "net.monitoring"."IpAddressMonitoring" to management; -- INSERT for 127.0.0.1 only - TODO: Trigger/view to enforce this?
