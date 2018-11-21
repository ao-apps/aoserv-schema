create sequence httpd_site_urls_pkey_seq cycle;
grant all            on httpd_site_urls_pkey_seq to aoadmin;
grant select, update on httpd_site_urls_pkey_seq to aoserv_app;

create table httpd_site_urls (
  pkey integer
    default nextval('httpd_site_urls_pkey_seq')
    primary key,
  httpd_site_bind integer
    not null,
  hostname text
    not null,
  is_primary bool
    not null,
  unique(hostname, httpd_site_bind)
);
grant all                            on httpd_site_urls to aoadmin;
grant select, insert, update, delete on httpd_site_urls to aoserv_app;
