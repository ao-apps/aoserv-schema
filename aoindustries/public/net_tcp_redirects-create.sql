create table net_tcp_redirects (
  net_bind integer
    constraint net_tcp_redirects_pkey primary key,
  cps integer
    not null,
  cps_overload_sleep_time integer
    not null,
  destination_host text
    not null,
  destination_port integer
    not null
);
grant all                            on net_tcp_redirects to aoadmin;
grant select, insert, update, delete on net_tcp_redirects to aoserv_app;
