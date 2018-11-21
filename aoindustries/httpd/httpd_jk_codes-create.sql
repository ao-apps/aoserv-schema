create table httpd_jk_codes (
  code char(2)
    primary key
);
grant all    on httpd_jk_codes to aoadmin;
grant select on httpd_jk_codes to aoserv_app;
