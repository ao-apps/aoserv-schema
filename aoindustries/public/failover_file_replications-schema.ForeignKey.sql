select "schema".add_foreign_key('failover_file_replications', 'from_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('failover_file_replications', 'server', 'servers', 'pkey', '1.31', null);
select "schema".add_foreign_key('failover_file_replications', 'to_server', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('failover_file_replications', 'backup_partition', 'backup_partitions', 'pkey', '1.31', null);
select "schema".add_foreign_key('failover_file_replications', 'retention', 'backup_retentions', 'days', '1.13', null);
select "schema".add_foreign_key('failover_file_replications', 'quota_gid', 'linux_ids', 'id', '1.31', '1.68');
select "schema".add_foreign_key('failover_file_replications', 'quota_gid', 'linux_ids', 'id', '1.69', '1.80');