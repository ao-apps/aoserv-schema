create index httpd_site_binds_httpd_bind_idx on httpd_site_binds (
  httpd_bind
);
create index httpd_site_binds_certificate_idx on httpd_site_binds (
  certificate
);
create index httpd_site_binds_disable_log_idx on httpd_site_binds (
  disable_log
);
