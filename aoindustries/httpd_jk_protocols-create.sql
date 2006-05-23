create table httpd_jk_protocols (
  protocol text
    constraint httpd_jk_protocols_pkey primary key
);
grant all on httpd_jk_protocols to aoadmin;
grant select on httpd_jk_protocols to aoserv_app;
