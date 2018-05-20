create sequence httpd_site_binds_pkey_seq cycle;
grant all on httpd_site_binds_pkey_seq to aoadmin;
grant select, update on httpd_site_binds_pkey_seq to aoserv_app;

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
  certificate int,
  disable_log integer,
  predisable_config text,
  is_manual bool
    not null
    default false,
  redirect_to_primary_hostname bool
    not null
    default true,
  include_site_config text
    check (
      include_site_config is null
      or include_site_config='true'
      or include_site_config='false'
      or include_site_config like 'IfModule %'
    ),
  unique(httpd_site, httpd_bind)
);
grant all on httpd_site_binds to aoadmin;
grant select, insert, update, delete on httpd_site_binds to aoserv_app;
