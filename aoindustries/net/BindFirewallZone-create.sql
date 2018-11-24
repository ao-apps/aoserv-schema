create sequence         net."BindFirewallZone_pkey_seq" cycle;
grant all            on net."BindFirewallZone_pkey_seq" to aoadmin;
grant select, update on net."BindFirewallZone_pkey_seq" to aoserv_app;

create table net."BindFirewallZone" (
  pkey integer
    default nextval('net."BindFirewallZone_pkey_seq"')
    primary key,
  net_bind integer
    not null,
  firewalld_zone integer
    not null,
  unique(net_bind, firewalld_zone)
);
grant all                    on net."BindFirewallZone" to aoadmin;
grant select, insert, delete on net."BindFirewallZone" to aoserv_app;
