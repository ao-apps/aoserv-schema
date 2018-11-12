create table ao_servers (
  server integer
    constraint ao_servers_pkey primary key,
  hostname text not null unique
    check(
      hostname=lower(hostname) -- Must be all lowercase
      and hostname!='default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      -- https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/migration_planning_guide/sect-red_hat_enterprise_linux-migration_planning_guide-networking
      -- "2.7.1. Recommended naming practices"
      and length(hostname) <= 64
      and hostname not like '%\_%'
    ),
  daemon_bind integer,
  daemon_key text
    not null,
  pool_size integer
    default 128
    not null,
  distro_hour integer
    not null
    default (random()*6)::integer -- Choose between 0 and 5 randomly
    constraint distro_hour_chk
      check (distro_hour>=0 and distro_hour<=23),
  last_distro_time timestamp with time zone,
  failover_server integer,
  daemon_device_id text
    not null
    default 'eth0',
  daemon_connect_bind integer,
  time_zone text not null default 'Etc/UTC',
  jilter_bind integer,
  restrict_outbound_email bool not null default true,
  daemon_connect_address text,
  failover_batch_size integer not null default 1000,
  monitoring_load_low float4
    default 1
    check (
      monitoring_load_low is null
      or monitoring_load_low > 0
    ),
  monitoring_load_medium float4
    default 2
    check (
      monitoring_load_medium is null or (
        monitoring_load_low is not null
        and monitoring_load_medium > monitoring_load_low
      )
    ),
  monitoring_load_high float4
    default 4
    check (
      monitoring_load_high is null or (
        monitoring_load_medium is not null
        and monitoring_load_high > monitoring_load_medium
      )
    ),
  monitoring_load_critical float4
    default 8
    check (
      monitoring_load_critical is null or (
        monitoring_load_high is not null
        and monitoring_load_critical > monitoring_load_high
      )
    ),
  uid_min integer not null check (uid_min >= 500 and uid_min < 60000) default 1000,
  gid_min integer not null check (gid_min >= 500 and gid_min < 60000) default 1000,
  sftp_umask int8
  check (
    sftp_umask is null
    or sftp_umask between 0 and 511 -- Between 000 and 777 octal
  )
);
grant all            on ao_servers to aoadmin;
grant select, update on ao_servers to aoserv_app;
