begin;
insert into httpd_sites values(
  130, -- ao_server_resource
  'httpd_static_site', -- resource_type
  'AOINDUSTRIES', -- accounting
  135, -- ao_server
  'disable', -- site_name
  false, -- list_first
  27, -- linux_account_group
  'shell_account', -- linux_account_type
  'webmaster@aoindustries.com', -- server_admin
  true, -- is_manual_config
  null -- awstats_skip_files
);
commit;
