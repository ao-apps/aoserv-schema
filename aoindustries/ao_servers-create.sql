create table ao_servers (
  server integer
    constraint ao_servers_pkey primary key,
  num_cpu integer
    not null
    constraint num_cpu_chk
      check (num_cpu>=1),
  cpu_speed integer
    not null
    constraint cpu_speed_chk
      check (cpu_speed>=1),
  ram integer
    not null
    constraint ram_chk
      check (ram>=1),
  rack integer
    constraint rack_chk
      check (rack is null or rack>=1),
  disk integer
    not null
    constraint disk_chk
      check (disk>=1),
  wildcard_https text,
  is_interbase bool
    not null,
  is_dns bool
    not null,
  is_router bool
    not null,
  iptables_name text
    not null
    unique,
  daemon_bind integer,
  daemon_key text
    not null,
  pool_size integer
    default 16
    not null,
  distro_hour integer
    not null
    constraint distro_hour_chk
      check (distro_hour>=0 and distro_hour<=23),
  last_distro_time timestamp,
  failover_server integer,
  server_report_delay integer
    default 60000
    not null,
  server_report_interval integer
    default 5
    not null,
  is_qmail bool
    not null,
  daemon_device_id text
    not null,
  xeroscape_name text,
  value decimal(9,2),
  monitoring_enabled bool
    not null,
  emailmon_password text,
  ftpmon_password text,
  daemon_connect_bind integer,
  time_zone text not null,
  jilter_bind integer,
  restrict_outbound_email bool not null,
  daemon_connect_address text
);
grant all on ao_servers to aoadmin;
grant select, update on ao_servers to aoserv_app;
