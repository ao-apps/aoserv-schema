-- Depends on:
-- TODO

create schema if not exists backup;

comment on schema backup is 'The backup schema configures backup and replication-based failover systems';

grant all   on schema backup to aoadmin;
grant usage on schema backup to aoserv_app;
