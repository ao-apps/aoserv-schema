create unique index httpd_servers_noname_uni on httpd_servers (
  ao_server
) where "name" is null;
create unique index httpd_servers_name_uni on httpd_servers (
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
--create unique index httpd_servers_name_encoded_uni on httpd_servers (
--  ao_server,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index httpd_servers_name_encoded_uni on httpd_servers (
  ao_server,
  replace("name", '/', '-')
) where "name" is not null;

create index httpd_servers_linux_server_account_idx on httpd_servers (
  linux_server_account
);
create index httpd_servers_linux_server_group_idx on httpd_servers (
  linux_server_group
);
create index httpd_servers_mod_php_version_idx on httpd_servers (
  mod_php_version
);
create index httpd_servers_package_idx on httpd_servers (
  package
);
