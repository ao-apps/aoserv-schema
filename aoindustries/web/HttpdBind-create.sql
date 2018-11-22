create table web."HttpdBind" (
  net_bind integer
    primary key,
  httpd_server integer
    not null
);
grant all                            on web."HttpdBind" to aoadmin;
grant select, insert, update, delete on web."HttpdBind" to aoserv_app;
