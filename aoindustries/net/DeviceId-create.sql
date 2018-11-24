create table net."DeviceId" (
  "name" text
    primary key,
  is_loopback boolean
    not null
);
grant all    on net."DeviceId" to aoadmin;
grant select on net."DeviceId" to aoserv_app;
