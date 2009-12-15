create unique index httpd_sites_uni on httpd_sites (
  ao_server,
  site_name
);
create index httpd_sites_accounting_idx on httpd_sites (
  accounting
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
