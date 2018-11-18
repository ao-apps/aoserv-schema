create unique index sendmail_servers_noname_uni on sendmail_servers (
  ao_server
) where "name" is null;
create unique index sendmail_servers_name_uni on sendmail_servers (
  ao_server,
  "name"
) where "name" is not null;

-- This index ensures a unique name after encoding.  The only thing that is
-- not one-to-one on the systemd encoding is '/' to '-'.  We are assuming
-- UTF-8 encoding, which matches the implementation in HttpdServerManager and
-- the default encoding for all our servers.
--
-- See https://www.freedesktop.org/software/systemd/man/systemd.unit.html
-- See SendmailServer.getSystemdEscapedName()
--create unique index sendmail_servers_name_encoded_uni on sendmail_servers (
--  ao_server,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index sendmail_servers_name_encoded_uni on sendmail_servers (
  ao_server,
  replace("name", '/', '-')
) where "name" is not null;

create index sendmail_servers_package_idx on sendmail_servers (
  package
);
create index sendmail_servers_server_certificate_idx on sendmail_servers (
  server_certificate
);
create index sendmail_servers_client_certificate_idx on sendmail_servers (
  client_certificate
);
create index "sendmail_servers_clientAddrInet_idx" on sendmail_servers (
  "clientAddrInet"
);
create index "sendmail_servers_clientAddrInet6_idx" on sendmail_servers (
  "clientAddrInet6"
);
