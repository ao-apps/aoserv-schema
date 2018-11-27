create schema if not exists postgresql;

comment on schema postgresql is 'PostgreSQL configuration';

grant all   on schema postgresql to aoadmin;
grant usage on schema postgresql to aoserv_app;
grant usage on schema postgresql to management;
