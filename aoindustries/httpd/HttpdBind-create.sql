create table httpd."HttpdBind" (
  net_bind integer
    primary key,
  httpd_server integer
    not null
);
grant all                            on httpd."HttpdBind" to aoadmin;
grant select, insert, update, delete on httpd."HttpdBind" to aoserv_app;
