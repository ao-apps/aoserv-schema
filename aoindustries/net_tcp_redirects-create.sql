create table net_tcp_redirects (
  net_bind integer primary key,
  cps integer not null check (cps>0),
  cps_overload_sleep_time integer not null check (cps_overload_sleep_time>0),
  destination_host text not null,
  destination_port integer not null check (destination_port between 1 and 65535)
);
grant all on net_tcp_redirects to aoadmin;
grant select, insert, update, delete on net_tcp_redirects to aoserv_app;
