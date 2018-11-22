create table httpd_jk_protocols (
  protocol text
    primary key
);
grant all    on httpd_jk_protocols to aoadmin;
grant select on httpd_jk_protocols to aoserv_app;
