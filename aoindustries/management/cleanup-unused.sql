create or replace view
  management."cleanup-unused"
as
-- TODO: cyrus_imapd_servers without any cyrus_imapd_binds
-- TODO: email_domains with no addresses
-- TODO: email_lists with no addresses
-- TODO: email_pipes with no addresses
-- TODO: httpd_servers
-- TODO: httpd_shared_tomcats
-- TODO: mysql_databases (without any mysql_db_users)
-- TODO: mysql_server_users (without any mysql_db_users)
-- TODO: mysql_users (orphaned)
-- mysql_servers
          (select 'mysql_servers', count(*) as unused from management."remove-mysql-server" where num_databases=0 and num_users=0)
-- TODO: postgres_databases (without any postgres_users in same business?/package?)
-- TODO: postgres_server_users (without any postgres_databases in same business?/package?)
-- TODO: postgres_users (orphaned)
-- postgres_servers
union all (select 'postgres_servers', count(*) as unused from management."remove-postgresql-server" where num_databases=0 and num_users=0)
-- TODO: sendmail_servers without any sendmail_binds
-- TODO: ssl_certificates (once have auto-cleanup within aoserv-daemon)
-- TODO: firewalld_zones
-- TODO: ip_addresses
-- TODO: ftp_guest_users
-- TODO: linux_accounts (orphaned)
-- TODO: linux_server_groups (orphaned or with no linux_group_accounts)
-- TODO: linux_groups (orphaned or with no linux_group_accounts)
-- TODO: usernames (orphaned)
;

revoke all on management."cleanup-unused" from aoadmin;
grant select on management."cleanup-unused" to aoadmin;
