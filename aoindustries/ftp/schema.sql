-- Depends on:
-- TODO

create schema if not exists ftp;

comment on schema ftp is 'The ftp schema contains FTP server configuration';

grant all   on schema ftp to aoadmin;
grant usage on schema ftp to aoserv_app;
