create sequence httpd_site_authenticated_locations_pkey_seq cycle;
grant all on httpd_site_authenticated_locations_pkey_seq to aoadmin;
grant select, update on httpd_site_authenticated_locations_pkey_seq to aoserv_app;

create table httpd_site_authenticated_locations (
  pkey integer
    default nextval('httpd_site_authenticated_locations_pkey_seq')
    constraint httpd_site_authenticated_locations_pkey primary key,
  httpd_site integer
    not null,
  path text
    not null,
  is_regular_expression bool
    not null,
  auth_name text
    not null,
  auth_group_file text
    not null,
  auth_user_file text
    not null,
  require text
    not null,
  unique(httpd_site, path)
);
grant all on httpd_site_authenticated_locations to aoadmin;
grant select, insert, update, delete on httpd_site_authenticated_locations to aoserv_app;
