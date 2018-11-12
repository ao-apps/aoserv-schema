create or replace view
  management."cleanup-canceled"
as
-- cvs_repositories
          (select accounting, aosh_command from management."cleanup-canceled-cvs_repositories" order by accounting, reverse_hostname(hostname), "path")
-- email_lists
union all (select accounting, aosh_command from management."cleanup-canceled-email_lists" order by accounting, reverse_hostname(hostname), "path")
-- email_domains
union all (select accounting, aosh_command from management."cleanup-canceled-email_domains" order by accounting, reverse_hostname(hostname), "domain")
-- httpd_sites
union all (select accounting, aosh_command from management."cleanup-canceled-httpd_sites" order by accounting, reverse_hostname(hostname), site_name)
-- httpd_shared_tomcats
union all (select accounting, aosh_command from management."cleanup-canceled-httpd_shared_tomcats" order by accounting, reverse_hostname(hostname), "name")
-- TODO: httpd_servers
-- linux_accounts
union all (select accounting, aosh_command from management."cleanup-canceled-linux_accounts" order by accounting, username)
-- linux_groups
union all (select accounting, aosh_command from management."cleanup-canceled-linux_groups" order by accounting, "name")
-- mysql_databases
union all (select accounting, aosh_command from management."cleanup-canceled-mysql_databases" order by accounting, mysql_server, "name")
-- mysql_users
union all (select accounting, aosh_command from management."cleanup-canceled-mysql_users" order by accounting, username)
-- TODO: mysql_servers
-- postgres_databases
union all (select accounting, aosh_command from management."cleanup-canceled-postgres_databases" order by accounting, postgres_server, "name")
-- postgres_users
union all (select accounting, aosh_command from management."cleanup-canceled-postgres_users" order by accounting, username)
-- TODO: postgres_servers
-- net_binds
union all (select accounting, aosh_command from management."cleanup-canceled-net_binds" order by accounting, port)
-- TODO: ssl_certificates (once have auto-cleanup within aoserv-daemon)
-- ip_addresses.hostname
union all (select accounting, aosh_command from management."cleanup-canceled-ip_addresses.hostname" order by accounting, reverse_hostname(hostname), pad_ip_address(ip_address))
-- ip_addresses.package
union all (select accounting, aosh_command from management."cleanup-canceled-ip_addresses.package" order by accounting, reverse_hostname(hostname), pad_ip_address(ip_address))
-- TODO: servers (once a server is owned by a package in the schema)
-- usernames
union all (select accounting, aosh_command from management."cleanup-canceled-usernames" order by accounting, username)
-- business_servers
union all (select accounting, aosh_command from management."cleanup-canceled-business_servers" order by accounting, is_default)
;

revoke all on management."cleanup-canceled" from aoadmin;
grant select on management."cleanup-canceled" to aoadmin;
