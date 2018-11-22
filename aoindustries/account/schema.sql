-- Depends on:
-- TODO

create schema if not exists account;

comment on schema account is 'The account schema is used for AO account configuration';

grant all   on schema account to aoadmin;
grant usage on schema account to aoserv_app;
grant usage on schema account to kaori;
