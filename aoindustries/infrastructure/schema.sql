create schema if not exists infrastructure;

comment on schema infrastructure is 'Infrastructure configuration';

grant all   on schema infrastructure to aoadmin;
grant usage on schema infrastructure to aoserv_app;
grant usage on schema infrastructure to infrastructure;
