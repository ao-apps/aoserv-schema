create table net."TcpRedirect" (
  net_bind integer
    primary key,
  cps integer
    not null,
  cps_overload_sleep_time integer
    not null,
  destination_host text
    not null,
  destination_port net."Port"
    not null
);
grant all            on net."TcpRedirect" to aoadmin;
grant select, delete on net."TcpRedirect" to aoserv_app;
