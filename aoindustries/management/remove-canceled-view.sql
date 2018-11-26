create or replace view
  management."remove-canceled"
as
-- scm.CvsRepository
          (select accounting, aosh_command from management."remove-canceled-scm.CvsRepository" order by accounting, net.reverse_hostname(hostname), "path")
-- email.List
union all (select accounting, aosh_command from management."remove-canceled-email.List" order by accounting, net.reverse_hostname(hostname), "path")
-- email.Domain
union all (select accounting, aosh_command from management."remove-canceled-email.Domain" order by accounting, net.reverse_hostname(hostname), "domain")
-- web.Site
union all (select accounting, aosh_command from management."remove-canceled-web.Site" order by accounting, net.reverse_hostname(hostname), "name")
-- web.tomcat.SharedTomcat
union all (select accounting, aosh_command from "web.tomcat.management"."SharedTomcat.remove-canceled" order by accounting, net.reverse_hostname(hostname), "name")
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
-- TODO: net.Host (once a server is owned by a package in the schema)
-- linux.User
union all (select accounting, aosh_command from management."remove-canceled-linux.User" order by accounting, username)
-- linux.Group
union all (select accounting, aosh_command from management."remove-canceled-linux.Group" order by accounting, "name")
-- account.Username
union all (select accounting, aosh_command from management."remove-canceled-account.Username" order by accounting, username)
-- account.AccountHost
union all (select accounting, aosh_command from management."remove-canceled-account.AccountHost" order by accounting, is_default)
;

revoke all    on management."remove-canceled" from aoadmin;
grant  select on management."remove-canceled" to   aoadmin;
