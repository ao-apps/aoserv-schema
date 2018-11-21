create table net_device_ids (
  "name" text
    primary key,
  is_loopback bool
    not null
);
grant all    on net_device_ids to aoadmin;
grant select on net_device_ids to aoserv_app;
