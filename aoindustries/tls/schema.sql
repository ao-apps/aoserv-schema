-- Depends on:
-- TODO

create schema if not exists tls;

comment on schema tls is 'The tls schema contains TLS and SSL configuration';

grant all   on schema tls to aoadmin;
grant usage on schema tls to aoserv_app;
