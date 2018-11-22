create unique index "VirtualHost_noname_uni" on web."VirtualHost" (
  httpd_site,
  httpd_bind
) where "name" is null;
create unique index "VirtualHost_name_uni" on web."VirtualHost" (
  httpd_site,
  httpd_bind,
  "name"
) where "name" is not null;

-- This index ensures a unique name after encoding.  The only thing that is
-- not one-to-one on the systemd encoding is '/' to '-'.  We are assuming
-- UTF-8 encoding, which matches the implementation in HttpdServerManager and
-- the default encoding for all our servers.
--
-- See https://www.freedesktop.org/software/systemd/man/systemd.unit.html
-- See HttpdSiteBind.getSystemdEscapedName()
--create unique index "VirtualHost_name_encoded_uni" on web."VirtualHost" (
--  httpd_site,
--  httpd_bind,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index "VirtualHost_name_encoded_uni" on web."VirtualHost" (
  httpd_site,
  httpd_bind,
  replace("name", '/', '-')
) where "name" is not null;

create index "VirtualHost_httpd_bind_fkey" on web."VirtualHost" (
  httpd_bind
);
create index "VirtualHost_certificate_fkey" on web."VirtualHost" (
  certificate
);
create index "VirtualHost_disable_log_fkey" on web."VirtualHost" (
  disable_log
);
