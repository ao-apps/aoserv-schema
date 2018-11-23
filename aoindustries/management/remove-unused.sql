-- See http://localhost:8080/docs/ao/management/remove/unused#procedure
create or replace view
  management."remove-unused"
as
-- TODO: email.CyrusImapdServer without any email.CyrusImapdBind
-- TODO: email.List with no addresses
-- TODO: email.Domain with no addresses
-- TODO: email.Pipe with no addresses
-- TODO: web.SharedTomcat
-- web.HttpdServer
          (select 'web'::name as "schema", 'HttpdServer'::name as "table", count(*) as unused from management."remove-httpd-server"
           where num_site_binds=0)
-- TODO: mysql_databases (without any mysql_db_users)
-- TODO: mysql_server_users (without any mysql_db_users)
-- TODO: mysql_users (orphaned)
-- mysql.MysqlServer
union all (select 'mysql'::name as "schema", 'MysqlServer'::name as "table", count(*) as unused from management."remove-mysql-server"
           where num_databases=0 or num_users=0)
-- TODO: postgres_databases (without any postgres_users in same business?/package?)
-- TODO: postgres_server_users (without any postgres_databases in same business?/package?)
-- TODO: postgres_users (orphaned)
-- postgres_servers
union all (select 'postgresql'::name as "schema", 'postgres_servers'::name as "table", count(*) as unused from management."remove-postgresql-server"
           where num_databases=0 or num_users=0)
-- TODO: email.SendmailServer without any email.SendmailBind
-- TODO: firewalld_zones
union all (select 'net'::name as "schema", 'IPAddress'::name as "table", count(*) as unused from management."release-IPAddress"
           where num_binds=0 and "AO_SERVER" is not null)
-- ssl_certificates
union all (select 'pki'::name as "schema", 'ssl_certificates'::name as "table", count(*) as unused from management."remove-ssl-certificate"
           where num_cyrus_imapd_binds=0 and num_cyrus_imapd_servers=0 and num_httpd_site_binds=0 and num_sendmail_servers=0 and num_other_uses=0)
-- TODO: ftp.GuestUser
-- TODO: linux_accounts (orphaned)
-- TODO: linux_server_groups (orphaned or with no linux_group_accounts)
-- TODO: linux_groups (orphaned or with no linux_group_accounts)
-- TODO: account.Username (orphaned)
-- TODO: business_servers (access to a server but without any resources - useful?)
;

revoke all    on management."remove-unused" from aoadmin;
grant  select on management."remove-unused" to   aoadmin;
