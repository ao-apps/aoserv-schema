-- Depends on:
-- TODO

create schema if not exists distribution;

comment on schema distribution is 'The distribution schema contains information about Linux distributions managed by the AOServ Platform';

grant all   on schema distribution to aoadmin;
grant usage on schema distribution to aoserv_app;
