create table protocols (
  protocol text
    primary key,
  port integer
    not null,
  name text
    not null,
  is_user_service bool
    not null,
  net_protocol text
    not null
);
grant all            on protocols to aoadmin;
grant select, update on protocols to aoserv_app;
