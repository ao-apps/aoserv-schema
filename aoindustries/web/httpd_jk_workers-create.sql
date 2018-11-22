create sequence         web.httpd_workers_pkey_seq cycle;
grant all            on web.httpd_workers_pkey_seq to aoadmin;
grant select, update on web.httpd_workers_pkey_seq to aoserv_app;

create table httpd_workers (
  pkey integer
    default nextval('web.httpd_workers_pkey_seq')
    primary key,
  code character(2)
    not null,
  net_bind integer
    not null
    unique,
  tomcat_site integer
);
grant all                            on httpd_workers to aoadmin;
grant select, insert, update, delete on httpd_workers to aoserv_app;
