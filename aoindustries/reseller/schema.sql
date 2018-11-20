-- Depends on:
-- TODO

create schema if not exists reseller;

comment on schema reseller is 'The reseller schema supports reseller tools';

grant all   on schema reseller to aoadmin;
grant usage on schema reseller to aoserv_app;
