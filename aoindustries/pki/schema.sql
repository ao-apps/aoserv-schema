-- Depends on:
-- TODO

create schema if not exists pki;

comment on schema pki is 'The pki schema contains public key infrastructure configuration';

grant all   on schema pki to aoadmin;
grant usage on schema pki to aoserv_app;