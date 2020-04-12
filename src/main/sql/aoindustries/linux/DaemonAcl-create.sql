create sequence         linux."DaemonAcl_id_seq" cycle;
grant all            on linux."DaemonAcl_id_seq" to aoadmin;
grant select         on linux."DaemonAcl_id_seq" to aoserv_app;
grant select, update on linux."DaemonAcl_id_seq" to management;

-- TODO: Same thing here as master_hosts, support cidr and require 0.0.0.0/32 or ::/128 to allow from anywhere
create table linux."DaemonAcl" (
  id integer
    default nextval('linux."DaemonAcl_id_seq"')
    primary key,
  ao_server integer
    not null,
  "host" "com.aoindustries.net"."HostAddress"
    not null,
  unique(ao_server, "host")
);
grant all    on linux."DaemonAcl" to aoadmin;
grant select on linux."DaemonAcl" to aoserv_app;
grant insert on linux."DaemonAcl" to management;
