create table httpd_binds (
  net_bind integer
    primary key,
  httpd_server integer
    not null
);
grant all                            on httpd_binds to aoadmin;
grant select, insert, update, delete on httpd_binds to aoserv_app;
