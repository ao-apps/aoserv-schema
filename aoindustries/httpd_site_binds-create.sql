create sequence httpd_site_binds_pkey_seq cycle;
grant all on httpd_site_binds_pkey_seq to aoadmin;
grant select, update, delete on httpd_site_binds_pkey_seq to aoserv_app;

create table httpd_site_binds (
  pkey integer
    default nextval('httpd_site_binds_pkey_seq')
    constraint httpd_site_binds_pkey primary key,
  httpd_site integer
    not null,
  httpd_bind integer
    not null,
  access_log text
    not null,
  error_log text
    not null,
  ssl_cert_file text,
  ssl_cert_key_file text,
  disable_log integer,
  predisable_config text,
  is_manual bool
    not null,
  unique(httpd_site, httpd_bind)
);
grant all on httpd_site_binds to aoadmin;
grant select, insert, update, delete on httpd_site_binds to aoserv_app;
