-- Depends on:
-- TODO

create schema if not exists httpd;

comment on schema httpd is 'The httpd schema contains HTTP server configuration';

grant all   on schema httpd to aoadmin;
grant usage on schema httpd to aoserv_app;
