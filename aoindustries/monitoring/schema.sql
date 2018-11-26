-- Depends on:
-- TODO

create schema if not exists monitoring;

comment on schema monitoring is 'The monitoring schema contains monitoring configuration';

grant all   on schema monitoring to aoadmin;
grant usage on schema monitoring to aoserv_app;
