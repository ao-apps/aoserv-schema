create or replace view
  management."remove-canceled"
as
-- cvs_repositories
          (select accounting, aosh_command from management."remove-canceled-cvs_repositories" order by accounting, net.reverse_hostname(hostname), "path")
-- email.List
union all (select accounting, aosh_command from management."remove-canceled-email.List" order by accounting, net.reverse_hostname(hostname), "path")
-- email.Domain
union all (select accounting, aosh_command from management."remove-canceled-email.Domain" order by accounting, net.reverse_hostname(hostname), "domain")
-- web.Site
union all (select accounting, aosh_command from management."remove-canceled-web.Site" order by accounting, net.reverse_hostname(hostname), "name")
-- web.SharedTomcat
union all (select accounting, aosh_command from management."remove-canceled-web.SharedTomcat" order by accounting, net.reverse_hostname(hostname), "name")
-- TODO: web.HttpdServer
-- mysql.MysqlDatabase
union all (select accounting, aosh_command from management."remove-canceled-mysql.MysqlDatabase" order by accounting, mysql_server, "name")
-- mysql_users
union all (select accounting, aosh_command from management."remove-canceled-mysql_users" order by accounting, username)
-- TODO: mysql.MysqlServer
-- postgres_databases
union all (select accounting, aosh_command from management."remove-canceled-postgres_databases" order by accounting, postgres_server, "name")
-- postgres_users
union all (select accounting, aosh_command from management."remove-canceled-postgres_users" order by accounting, username)
-- TODO: postgres_servers
-- TODO: email.SendmailServer without any email.SendmailBind
-- net_binds
union all (select accounting, aosh_command from management."remove-canceled-net_binds" order by accounting, port)
-- IPAddress.hostname
union all (select accounting, aosh_command from management."remove-canceled-IPAddress.hostname" order by accounting, net.reverse_hostname(hostname), "inetAddress")
-- IPAddress.package
union all (select accounting, aosh_command from management."remove-canceled-IPAddress.package" order by accounting, net.reverse_hostname(hostname), "inetAddress")
-- TODO: ssl_certificates (once have auto-cleanup within aoserv-daemon)
-- TODO: servers (once a server is owned by a package in the schema)
-- linux_accounts
union all (select accounting, aosh_command from management."remove-canceled-linux_accounts" order by accounting, username)
-- linux_groups
union all (select accounting, aosh_command from management."remove-canceled-linux_groups" order by accounting, "name")
-- account."Username"
union all (select accounting, aosh_command from management."remove-canceled-account.Username" order by accounting, username)
-- business_servers
union all (select accounting, aosh_command from management."remove-canceled-business_servers" order by accounting, is_default)
;

revoke all    on management."remove-canceled" from aoadmin;
grant  select on management."remove-canceled" to   aoadmin;
