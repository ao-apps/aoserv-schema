create schema if not exists web;

comment on schema web is 'Web server and site configuration';

grant all   on schema web to aoadmin;
grant usage on schema web to aoserv_app;
grant usage on schema web to management;
