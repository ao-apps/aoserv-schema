create unique index httpd_site_binds_noname_uni on httpd_site_binds (
  httpd_site,
  httpd_bind
) where "name" is null;
create unique index httpd_site_binds_name_uni on httpd_site_binds (
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
--create unique index httpd_site_binds_name_encoded_uni on httpd_site_binds (
--  httpd_site,
--  httpd_bind,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index httpd_site_binds_name_encoded_uni on httpd_site_binds (
  httpd_site,
  httpd_bind,
  replace("name", '/', '-')
) where "name" is not null;

create index httpd_site_binds_httpd_bind_idx on httpd_site_binds (
  httpd_bind
);
create index httpd_site_binds_certificate_idx on httpd_site_binds (
  certificate
);
create index httpd_site_binds_disable_log_idx on httpd_site_binds (
  disable_log
);
