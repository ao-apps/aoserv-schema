create index httpd_sites_package_idx on httpd_sites (
  package
);
create index httpd_sites_linux_account_idx on httpd_sites (
  linux_account
);
create index httpd_sites_linux_group_idx on httpd_sites (
  linux_group
);
create index httpd_sites_disable_log_idx on httpd_sites (
  disable_log
);
