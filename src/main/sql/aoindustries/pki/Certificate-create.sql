create sequence         pki."Certificate_id_seq" cycle;
grant all            on pki."Certificate_id_seq" to aoadmin;
grant select         on pki."Certificate_id_seq" to aoserv_app;
grant select, update on pki."Certificate_id_seq" to management;

create table pki."Certificate" (
  id integer
    default nextval('pki."Certificate_id_seq"')
    primary key,
  ao_server integer
    not null,
  package integer
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  key_file "com.aoindustries.net"."Path" not null
    check (
      certbot_name is null
      or key_file = ('/etc/letsencrypt/live/' || certbot_name || '/privkey.pem')
    ),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  csr_file "com.aoindustries.net"."Path"
    check (
      certbot_name is null
      or csr_file is null
    ),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  cert_file "com.aoindustries.net"."Path" not null
    check (
      certbot_name is null
      or cert_file = ('/etc/letsencrypt/live/' || certbot_name || '/cert.pem')
    ),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  chain_file "com.aoindustries.net"."Path"
    check (
      certbot_name is null
      or chain_file = ('/etc/letsencrypt/live/' || certbot_name || '/chain.pem')
    ),
  certbot_name text
    check (
      certbot_name is null
      or (
        certbot_name not like '%/%'
        -- Avoid conflict with files from cyrus-imapd-copy-certificates or sendmail-copy-certificates
        and certbot_name not in ('copy-certificates', 'README.txt')
      )
    )
);
grant all                    on pki."Certificate" to aoadmin;
grant select                 on pki."Certificate" to aoserv_app;
grant select, insert, delete on pki."Certificate" to management;
