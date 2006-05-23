create table net_device_ids (
  name text
    constraint net_device_ids_pkey primary key,
  is_loopback bool
    not null
);
grant all on net_device_ids to aoadmin;
grant select on net_device_ids to aoserv_app;
