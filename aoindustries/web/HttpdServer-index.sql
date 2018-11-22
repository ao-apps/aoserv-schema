create unique index "HttpdServer_noname_uni" on httpd."HttpdServer" (
  ao_server
) where "name" is null;
create unique index "HttpdServer_name_uni" on httpd."HttpdServer" (
  ao_server,
  "name"
) where "name" is not null;

-- This index ensures a unique name after encoding.  The only thing that is
-- not one-to-one on the systemd encoding is '/' to '-'.  We are assuming
-- UTF-8 encoding, which matches the implementation in HttpdServerManager and
-- the default encoding for all our servers.
--
-- See https://www.freedesktop.org/software/systemd/man/systemd.unit.html
-- See HttpdServer.getSystemdEscapedName()
--create unique index "HttpdServer_name_encoded_uni" on httpd."HttpdServer" (
--  ao_server,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index "HttpdServer_name_encoded_uni" on httpd."HttpdServer" (
  ao_server,
  replace("name", '/', '-')
) where "name" is not null;

create index "HttpdServer_linux_server_account_fkey" on httpd."HttpdServer" (
  linux_server_account
);
create index "HttpdServer_linux_server_group_fkey" on httpd."HttpdServer" (
  linux_server_group
);
create index "HttpdServer_mod_php_version_fkey" on httpd."HttpdServer" (
  mod_php_version
);
create index "HttpdServer_package_fkey" on httpd."HttpdServer" (
  package
);
