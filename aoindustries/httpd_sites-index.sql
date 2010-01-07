create unique index httpd_sites_resource_type_super on httpd_sites (
  resource_type,
  ao_server_resource
);
create unique index httpd_sites_accounting_super on httpd_sites (
  accounting,
  ao_server_resource
);
create unique index httpd_sites_ao_server_super on httpd_sites (
  ao_server,
  ao_server_resource
);
create unique index httpd_sites_ao_server_super2 on httpd_sites (
  ao_server,
  linux_account_group
);
create unique index httpd_sites_uni on httpd_sites (
  ao_server,
  site_name
);
create index httpd_sites_linux_account_group_idx on httpd_sites (
  linux_account_type,
  linux_account_group
);
