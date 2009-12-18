create unique index httpd_shared_tomcats_uni on httpd_shared_tomcats (
  ao_server,
  "name"
);
create index httpd_shared_tomcats_version_idx on httpd_shared_tomcats (
  version
);
create index httpd_shared_tomcats_linux_server_account_idx on httpd_shared_tomcats (
  linux_server_account
);
create index httpd_shared_tomcats_linux_server_group_idx on httpd_shared_tomcats (
  linux_server_group
);
create index httpd_shared_tomcats_disable_log_idx on httpd_shared_tomcats (
  disable_log
);
