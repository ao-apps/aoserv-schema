create table httpd_static_sites (
  httpd_site integer
    constraint httpd_static_sites_pkey primary key
);
grant all                    on httpd_static_sites to aoadmin;
grant select, update, delete on httpd_static_sites to aoserv_app;
