create index httpd_site_urls_httpd_site_bind_idx on httpd_site_urls (
  httpd_site_bind
);
create unique index httpd_site_urls_is_primary_uni on httpd_site_urls (
  httpd_site_bind
) where is_primary;
