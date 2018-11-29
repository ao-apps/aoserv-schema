create or replace view
  management."remove-canceled"
as
-- scm.CvsRepository
          (select accounting, aosh_command from "scm.management"."CvsRepository.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "path")
-- email.List
union all (select accounting, aosh_command from "email.management"."List.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "path")
-- email.Domain
union all (select accounting, aosh_command from "email.management"."Domain.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "domain")
-- web.Site
union all (select accounting, aosh_command from "web.management"."Site.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "name")
-- web.tomcat.SharedTomcat
union all (select accounting, aosh_command from "web.tomcat.management"."SharedTomcat.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "name")
-- TODO: web.HttpdServer
-- mysql.Database
union all (select accounting, aosh_command from "mysql.management"."Database.remove-canceled" order by accounting, mysql_server, "name")
-- mysql.User
union all (select accounting, aosh_command from "mysql.management"."User.remove-canceled" order by accounting, username)
-- TODO: mysql.Server
-- postgresql.Database
union all (select accounting, aosh_command from "postgresql.management"."Database.remove-canceled" order by accounting, postgres_server, "name")
-- postgresql.User
union all (select accounting, aosh_command from "postgresql.management"."User.remove-canceled" order by accounting, username)
-- TODO: postgresql.Server
-- TODO: email.SendmailServer without any email.SendmailBind
-- net.Bind
union all (select accounting, aosh_command from "net.management"."Bind.remove-canceled" order by accounting, port)
-- net.IpAddress.hostname
union all (select accounting, aosh_command from "net.management"."IpAddress.hostname.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "inetAddress")
-- net.IpAddress.package
union all (select accounting, aosh_command from "net.management"."IpAddress.package.remove-canceled" order by accounting, net."Host.reverseFqdn"(hostname), "inetAddress")
-- TODO: pki.Certificate (once have auto-cleanup within aoserv-daemon)
-- TODO: net.Host (once a server is owned by a package in the schema)
-- linux.User
union all (select accounting, aosh_command from "linux.management"."User.remove-canceled" order by accounting, username)
-- linux.Group
union all (select accounting, aosh_command from "linux.management"."Group.remove-canceled" order by accounting, "name")
-- account.Username
union all (select accounting, aosh_command from "account.management"."Username.remove-canceled" order by accounting, username)
-- account.AccountHost
union all (select accounting, aosh_command from "account.management"."AccountHost.remove-canceled" order by accounting, is_default)
;

revoke all    on management."remove-canceled" from aoadmin;
grant  select on management."remove-canceled" to   aoadmin;
grant  select on management."remove-canceled" to   management;
