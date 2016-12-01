create table ao_servers (
  server integer
    constraint ao_servers_pkey primary key,
  hostname text not null unique
    check(
      hostname=lower(hostname) -- Must be all lowercase
      and hostname!='default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
    ),
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
  last_distro_time timestamp with time zone,
  failover_server integer,
  daemon_device_id text
    not null,
  daemon_connect_bind integer,
  time_zone text not null,
  jilter_bind integer,
  restrict_outbound_email bool not null,
  daemon_connect_address text,
  failover_batch_size integer not null,
  monitoring_load_low float4,
  monitoring_load_medium float4 check (monitoring_load_medium is null or monitoring_load_low is not null and monitoring_load_medium>monitoring_load_low),
  monitoring_load_high float4 check (monitoring_load_high is null or monitoring_load_medium is not null and monitoring_load_high>monitoring_load_medium),
  monitoring_load_critical float4 check (monitoring_load_critical is null or monitoring_load_high is not null and monitoring_load_critical>monitoring_load_high),
  uid_min integer not null check (uid_min >= 500 and uid_min < 60000) default 1000,
  gid_min integer not null check (gid_min >= 500 and gid_min < 60000) default 1000
);
grant all on ao_servers to aoadmin;
grant select, update on ao_servers to aoserv_app;
