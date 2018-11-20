-- Depends on:
-- TODO

create schema if not exists net;

comment on schema net is 'The net schema contains networking configuration';

grant all   on schema net to aoadmin;
grant usage on schema net to aoserv_app;
