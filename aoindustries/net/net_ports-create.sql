create table net_ports (
  port integer
    constraint net_ports_pkey primary key,
 -- TODO: Remove is_user here.  In fact, probable best to remove this table entirely.
  is_user boolean
    not null
);
grant all    on net_ports to aoadmin;
grant select on net_ports to aoserv_app;
