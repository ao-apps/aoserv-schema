create schema if not exists backup;

comment on schema backup is 'Backup and replication-based failover systems';

grant all   on schema backup to aoadmin;
grant usage on schema backup to aoserv_app;
grant usage on schema backup to management;
