create sequence server."LinuxServerDaemonHost_pkey_seq" cycle;
grant all    on server."LinuxServerDaemonHost_pkey_seq" to aoadmin;
grant select on server."LinuxServerDaemonHost_pkey_seq" to aoserv_app;

-- TODO: Same thing here as master_hosts, support cidr and require 0.0.0.0/32 or ::/128 to allow from anywhere
create table linux."LinuxServerDaemonHost" (
  pkey integer
    default nextval('server."LinuxServerDaemonHost_pkey_seq"')
    primary key,
  ao_server integer
    not null,
  "host" text
    not null,
  unique(ao_server, "host")
);
grant all    on linux."LinuxServerDaemonHost" to aoadmin;
grant select on linux."LinuxServerDaemonHost" to aoserv_app;
