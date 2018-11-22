create unique index "SendmailServer_noname_uni" on email."SendmailServer" (
  ao_server
) where "name" is null;
create unique index "SendmailServer_name_uni" on email."SendmailServer" (
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
--create unique index "SendmailServer_name_encoded_uni" on email."SendmailServer" (
--  ao_server,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index "SendmailServer_name_encoded_uni" on email."SendmailServer" (
  ao_server,
  replace("name", '/', '-')
) where "name" is not null;

create index "SendmailServer_package_fkey" on email."SendmailServer" (
  package
);
create index "SendmailServer_server_certificate_fkey" on email."SendmailServer" (
  server_certificate
);
create index "SendmailServer_client_certificate_fkey" on email."SendmailServer" (
  client_certificate
);
create index "SendmailServer_clientAddrInet_idx" on email."SendmailServer" (
  "clientAddrInet"
);
create index "SendmailServer_clientAddrInet6_idx" on email."SendmailServer" (
  "clientAddrInet6"
);
