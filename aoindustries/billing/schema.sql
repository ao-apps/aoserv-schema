-- Depends on:
-- TODO

create schema if not exists billing;

comment on schema billing is 'The billing schema contains billing configuration and history';

grant all   on schema billing to aoadmin;
grant usage on schema billing to aoserv_app;
grant usage on schema billing to kaori;
