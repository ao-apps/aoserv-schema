create table linux."Server" (
  server integer
    primary key,
  hostname "com.aoindustries.net"."DomainName"
    not null unique
    check(
      hostname::text = lower(hostname::text) -- Must be all lowercase
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
  "daemonDeviceId" text
    not null
    default 'eth0',
  daemon_connect_bind integer,
  time_zone text not null default 'Etc/UTC',
  jilter_bind integer,
  restrict_outbound_email boolean not null default true,
  daemon_connect_address text,
  failover_batch_size integer not null default 1000,
  monitoring_load_low real
    default 1
    check (
      monitoring_load_low is null
      or monitoring_load_low > 0
    ),
  monitoring_load_medium real
    default 2
    check (
      monitoring_load_medium is null or (
        monitoring_load_low is not null
        and monitoring_load_medium > monitoring_load_low
      )
    ),
  monitoring_load_high real
    default 4
    check (
      monitoring_load_high is null or (
        monitoring_load_medium is not null
        and monitoring_load_high > monitoring_load_medium
      )
    ),
  monitoring_load_critical real
    default 8
    check (
      monitoring_load_critical is null or (
        monitoring_load_high is not null
        and monitoring_load_critical > monitoring_load_high
      )
    ),
  "uidMin" linux."LinuxId"
    not null
    check ("uidMin" >= 500)
    default 1000,
  "gidMin" linux."LinuxId"
    not null
    check ("gidMin" >= 500)
    default 1000,
  "uidMax" linux."LinuxId"
    not null
    check ("uidMax" >= "uidMin")
    default 60000,
  "gidMax" linux."LinuxId"
    not null
    check ("gidMax" >= "gidMin")
    default 60000,
  "lastUid" linux."LinuxId"
    check (
      "lastUid" is null
      or "lastUid" between "uidMin" and "uidMax"
    ),
  "lastGid" linux."LinuxId"
    check (
      "lastGid" is null
      or "lastGid" between "gidMin" and "gidMax"
    ),
  sftp_umask bigint
  check (
    sftp_umask is null
    or sftp_umask between 0 and 511 -- Between 000 and 777 octal
  )
);

comment on column linux."Server"."uidMin" is 'The min value for automatic uid selection in useradd';
comment on column linux."Server"."uidMax" is 'The max value for automatic uid selection in useradd';
comment on column linux."Server"."gidMin" is 'The min value for automatic uid selection in groupadd';
comment on column linux."Server"."gidMax" is 'The max value for automatic uid selection in groupadd';

grant all            on linux."Server" to aoadmin;
grant select, update on linux."Server" to aoserv_app;
grant select, update on linux."Server" to infrastructure;
grant select         on linux."Server" to management;
