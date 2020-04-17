/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

-- See http://localhost:8080/docs/ao/management/remove/unused#procedure
create or replace view
  management."remove-unused"
as
-- TODO: email.CyrusImapdServer without any email.CyrusImapdBind
-- TODO: email.List with no addresses
-- TODO: email.Domain with no addresses
-- TODO: email.Pipe with no addresses
-- TODO: web.tomcat.SharedTomcat
-- web.HttpdServer
          (select 'web'::name as "schema", 'HttpdServer'::name as "table", count(*) as unused from "web.management"."HttpdServer.remove"
           where num_site_binds=0)
-- TODO: mysql.Database (without any mysql.DatabaseUser)
-- TODO: mysql.UserServer (without any mysql.DatabaseUser)
-- TODO: mysql.User (orphaned)
-- mysql.Server
union all (select 'mysql'::name as "schema", 'Server'::name as "table", count(*) as unused from "mysql.management"."Server.remove"
           where num_databases=0 or num_users=0)
-- TODO: postgresql.Database (without any postgresql.User in same business?/package?)
-- TODO: postgresql.UserServer (without any postgresql.Database in same business?/package?)
-- TODO: postgresql.User (orphaned)
-- postgresql.Server
union all (select 'postgresql'::name as "schema", 'Server'::name as "table", count(*) as unused from "postgresql.management"."Server.remove"
           where num_databases=0 or num_users=0)
-- TODO: email.SendmailServer without any email.SendmailBind
-- TODO: net.FirewallZone
union all (select 'net'::name as "schema", 'IpAddress'::name as "table", count(*) as unused from "net.management"."IpAddress.release"
           where num_justifying_binds=0 and "AO_SERVER" is not null)
-- pki.Certificate
union all (select 'pki'::name as "schema", 'Certificate'::name as "table", count(*) as unused from "pki.management"."Certificate.remove"
           where num_cyrus_imapd_binds=0 and num_cyrus_imapd_servers=0 and num_httpd_site_binds=0 and num_sendmail_servers=0 and num_other_uses=0)
-- TODO: ftp.GuestUser
-- TODO: linux.User (orphaned)
-- TODO: linux.GroupServer (orphaned or with no linux.GroupUser)
-- TODO: linux.Group (orphaned or with no linux.GroupUser)
-- TODO: account.User (orphaned)
-- TODO: account.AccountHost (access to a server but without any resources - useful?)
;

revoke all    on management."remove-unused" from aoadmin;
grant  select on management."remove-unused" to   aoadmin;
grant  select on management."remove-unused" to   management;
