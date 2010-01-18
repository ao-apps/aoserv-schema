create unique index httpd_servers_uni on httpd_servers (
  ao_server,
  "number"
);
create unique index httpd_servers_ao_server_super on httpd_servers (
  ao_server,
  ao_server_resource
);
create index httpd_servers_linux_account_group_idx on httpd_servers (
  ao_server,
  linux_account_group
);
create index httpd_servers_mod_php_version_idx on httpd_servers (
  mod_php_version
);
