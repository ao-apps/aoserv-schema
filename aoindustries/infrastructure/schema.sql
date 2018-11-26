create schema if not exists infrastructure;

comment on schema infrastructure is 'The infrastructure schema contains infrastructure configuration';

grant all   on schema infrastructure to aoadmin;
grant usage on schema infrastructure to aoserv_app;
