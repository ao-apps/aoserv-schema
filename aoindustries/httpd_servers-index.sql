create unique index httpd_servers_uni on httpd_servers (
  ao_server,
  "number"
);
create index httpd_servers_linux_account_idx on httpd_servers (
  linux_account
);
create index httpd_servers_linux_group_idx on httpd_servers (
  linux_group
);
create index httpd_servers_mod_php_version_idx on httpd_servers (
  mod_php_version
);
create index httpd_servers_accounting_idx on httpd_servers (
  accounting
);
