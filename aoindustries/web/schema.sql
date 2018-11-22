-- Depends on:
-- TODO

create schema if not exists web;

comment on schema web is 'The web schema contains web server and site configuration';

grant all   on schema web to aoadmin;
grant usage on schema web to aoserv_app;
