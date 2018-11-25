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
-- mysql.Database
union all (select accounting, aosh_command from management."remove-canceled-mysql.Database" order by accounting, mysql_server, "name")
-- mysql.User
union all (select accounting, aosh_command from management."remove-canceled-mysql.User" order by accounting, username)
-- TODO: mysql.Server
-- postgresql.Database
union all (select accounting, aosh_command from management."remove-canceled-postgresql.Database" order by accounting, postgres_server, "name")
-- postgresql.User
union all (select accounting, aosh_command from management."remove-canceled-postgresql.User" order by accounting, username)
-- TODO: postgresql.Server
-- TODO: email.SendmailServer without any email.SendmailBind
-- net.Bind
union all (select accounting, aosh_command from management."remove-canceled-net.Bind" order by accounting, port)
-- net.IpAddress.hostname
union all (select accounting, aosh_command from management."remove-canceled-net.IpAddress.hostname" order by accounting, net.reverse_hostname(hostname), "inetAddress")
-- net.IpAddress.package
union all (select accounting, aosh_command from management."remove-canceled-net.IpAddress.package" order by accounting, net.reverse_hostname(hostname), "inetAddress")
-- TODO: pki.Certificate (once have auto-cleanup within aoserv-daemon)
-- TODO: servers (once a server is owned by a package in the schema)
-- linux.LinuxUser
union all (select accounting, aosh_command from management."remove-canceled-linux.LinuxUser" order by accounting, username)
-- linux.LinuxGroup
union all (select accounting, aosh_command from management."remove-canceled-linux.LinuxGroup" order by accounting, "name")
-- account."Username"
union all (select accounting, aosh_command from management."remove-canceled-account.Username" order by accounting, username)
-- business_servers
union all (select accounting, aosh_command from management."remove-canceled-business_servers" order by accounting, is_default)
;

revoke all    on management."remove-canceled" from aoadmin;
grant  select on management."remove-canceled" to   aoadmin;
