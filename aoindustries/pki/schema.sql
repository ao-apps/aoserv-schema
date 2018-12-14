create schema if not exists pki;

comment on schema pki is 'Public key infrastructure configuration';

grant all   on schema pki to aoadmin;
grant usage on schema pki to aoserv_app;
grant usage on schema pki to management;
