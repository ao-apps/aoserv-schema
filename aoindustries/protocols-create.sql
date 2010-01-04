create table protocols (
  protocol text primary key,
  port integer not null check (port between 1 and 65535),
  "name" text not null,
  is_user_service bool not null,
  net_protocol text not null
);
grant all on protocols to aoadmin;
grant select on protocols to aoserv_app;
