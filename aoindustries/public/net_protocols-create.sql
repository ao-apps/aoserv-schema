create table net_protocols (
  protocol text
    constraint net_protocols_pkey primary key
);
grant all on net_protocols to aoadmin;
grant select, update on net_protocols to aoserv_app;
