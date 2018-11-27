create sequence         net."BindFirewallZone_id_seq" cycle;
grant all            on net."BindFirewallZone_id_seq" to aoadmin;
grant select, update on net."BindFirewallZone_id_seq" to aoserv_app;
grant select, update on net."BindFirewallZone_id_seq" to management;

create table net."BindFirewallZone" (
  id integer
    default nextval('net."BindFirewallZone_id_seq"')
    primary key,
  net_bind integer
    not null,
  firewalld_zone integer
    not null,
  unique(net_bind, firewalld_zone)
);
grant all                    on net."BindFirewallZone" to aoadmin;
grant select, insert, delete on net."BindFirewallZone" to aoserv_app;
grant select, insert         on net."BindFirewallZone" to management;
