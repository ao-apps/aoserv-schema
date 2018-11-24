-- TODO: Make an enum both in PostgreSQL and Java
create table net_protocols (
  protocol text
    primary key
);
grant all    on net_protocols to aoadmin;
grant select on net_protocols to aoserv_app;
