create sequence httpd_site_bind_redirects_pkey_seq cycle;
grant all on httpd_site_bind_redirects_pkey_seq to aoadmin;
grant select on httpd_site_bind_redirects_pkey_seq to aoserv_app; -- , update, delete

create table httpd_site_bind_redirects (
  pkey            integer
    default nextval('httpd_site_bind_redirects_pkey_seq')
    constraint httpd_site_bind_redirects_pkey primary key,
  httpd_site_bind integer  not null,
  sort_order      smallint not null,
  pattern         text     not null,
  substitution    text     not null,
  comment         text,
  no_escape       boolean  not null default false,
  unique(httpd_site_bind, sort_order),
  unique(pattern, httpd_site_bind)
);
grant all on httpd_site_bind_redirects to aoadmin;
grant select, delete on httpd_site_bind_redirects to aoserv_app; -- , insert, update
