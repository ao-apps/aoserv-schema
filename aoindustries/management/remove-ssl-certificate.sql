-- See http://localhost:8080/docs/ao/management/ssl-certificates/remove#procedure
create or replace view
  management."remove-ssl-certificate"
as
select
  (select count(*) from public.cyrus_imapd_binds   cib where cib.certificate       = sc.pkey) as num_cyrus_imapd_binds,
  (select count(*) from public.cyrus_imapd_servers cis where cis.certificate       = sc.pkey) as num_cyrus_imapd_servers,
  (select count(*) from public.httpd_site_binds    hsb where hsb.certificate       = sc.pkey) as num_httpd_site_binds,
  (select count(*) from public.sendmail_servers    ss  where ss.server_certificate = sc.pkey
                                                          or ss.client_certificate = sc.pkey) as num_sendmail_servers,
  ao.hostname as "SERVER",
  case when osv.operating_system='centos' then 'CentOS' else osv.operating_system end
    || ' ' || osv.version_number as "OS",
  (
    select
      case when scn.is_wildcard then '*.' else '' end
      || scn."domain"
    from
      ssl_certificate_names scn
    where
      scn.ssl_certificate=sc.pkey
      and scn.is_common_name
  ) as "COMMON_NAME",
  sc.certbot_name as "CERTBOT_NAME",
  case when (
    select sc2.pkey from public.ssl_certificates sc2 where
      sc2.ao_server=sc.ao_server and sc2.pkey!=sc.pkey and sc2.certbot_name is not null
    limit 1
  ) is not null then 'Yes' else 'No' end as "HAS_OTHER_CERTBOT",
  case when sc.certbot_name is null then sc.key_file   else null end as "KEY_FILE",
  case when sc.certbot_name is null then sc.csr_file   else null end as "CSR_FILE",
  case when sc.certbot_name is null then sc.cert_file  else null end as "CERT_FILE",
  case when sc.certbot_name is null then sc.chain_file else null end as "CHAIN_FILE"
from
             public.ssl_certificates          sc
  inner join public.ao_servers                ao  on sc.ao_server                = ao.server
  inner join public.servers                   se  on ao.server                   = se.pkey
  inner join public.operating_system_versions osv on se.operating_system_version = osv.pkey;

revoke all    on management."remove-ssl-certificate" from aoadmin;
grant  select on management."remove-ssl-certificate" to   aoadmin;
