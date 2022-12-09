/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020, 2021, 2022  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

-- See http://localhost:8080/docs/ao/management/ssl-certificates/remove-ssl-certificate#procedure
create or replace view
  "pki.management"."Certificate.remove"
as
select
  (select count(*) from email."CyrusImapdBind"   cib where cib.certificate       = sc.id) as num_cyrus_imapd_binds,
  (select count(*) from email."CyrusImapdServer" cis where cis.certificate       = sc.id) as num_cyrus_imapd_servers,
  (select count(*) from web."VirtualHost"        hsb where hsb.certificate       = sc.id) as num_httpd_site_binds,
  (select count(*) from email."SendmailServer"   ss  where ss.server_certificate = sc.id
                                                          or ss.client_certificate = sc.id) as num_sendmail_servers,
  coalesce((select sum("count") from pki."CertificateOtherUse" scou where scou.ssl_certificate  = sc.id), 0) as num_other_uses,
  ao.hostname as "SERVER",
  case
    when osv.operating_system = 'centos' then 'CentOS'
    when osv.operating_system = 'rocky' then 'Rocky'
    else osv.operating_system
  end || ' ' || osv.version_number as "OS",
  (
    select
      case when scn.is_wildcard then '*.' else '' end
      || scn."domain"
    from
      pki."CertificateName" scn
    where
      scn.ssl_certificate=sc.id
      and scn.is_common_name
  ) as "COMMON_NAME",
  sc.certbot_name as "CERTBOT_NAME",
  case when (
    select sc2.id from pki."Certificate" sc2 where
      sc2.ao_server=sc.ao_server and sc2.id!=sc.id and sc2.certbot_name is not null
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_CERTBOT",
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  case when sc.certbot_name is null then sc.key_file   else null::"com.aoapps.net"."Path" end as "KEY_FILE",
  case when sc.certbot_name is null then sc.csr_file   else null::"com.aoapps.net"."Path" end as "CSR_FILE",
  case when sc.certbot_name is null then sc.cert_file  else null::"com.aoapps.net"."Path" end as "CERT_FILE",
  case when sc.certbot_name is null then sc.chain_file else null::"com.aoapps.net"."Path" end as "CHAIN_FILE"
from
             pki."Certificate"                     sc
  inner join linux."Server"                        ao  on sc.ao_server                = ao.server
  inner join net."Host"                       se  on ao.server                   = se.id
  inner join distribution."OperatingSystemVersion" osv on se.operating_system_version = osv.id;

revoke all    on "pki.management"."Certificate.remove" from aoadmin;
grant  select on "pki.management"."Certificate.remove" to   aoadmin;
grant  select on "pki.management"."Certificate.remove" to   management;
