create table httpd_sites (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type in ('httpd_jboss_site', 'httpd_static_site', 'httpd_tomcat_shared_site', 'httpd_tomcat_std_site')), -- Used as hidden reference to ao_server_resources only
  accounting text not null, -- Used as hidden reference to ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to linux_account_groups and ao_server_resources only
  site_name text not null check (
    site_name=lower(site_name)
    && site_name not in ('aquota.user')
  ),
  list_first boolean default false not null,
  linux_account_group integer not null,
  linux_account_type text not null check (linux_account_type in ('shell_account', 'ftponly_account')), -- Used as hidden reference to linux_account_groups only
  server_admin text not null,
  is_manual_config bool not null,
  awstats_skip_files text
);
grant all on httpd_sites to aoadmin;
grant select, insert, update, delete on httpd_sites to aoserv_app;
