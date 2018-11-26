create schema if not exists scm;

comment on schema scm is 'Source control management configuration';

grant all   on schema scm to aoadmin;
grant usage on schema scm to aoserv_app;
