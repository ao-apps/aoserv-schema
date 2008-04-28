create table ao_servers (
  server integer
    constraint ao_servers_pkey primary key,
  hostname text not null unique,
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
  daemon_device_id text
    not null,
  daemon_connect_bind integer,
  time_zone text not null,
  jilter_bind integer,
  restrict_outbound_email bool not null,
  daemon_connect_address text,
  failover_batch_size integer not null
);
grant all on ao_servers to aoadmin;
grant select, update on ao_servers to aoserv_app;
