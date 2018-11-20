select "schema".add_foreign_key('backup', 'failover_mysql_replications', 'ao_server',    'server', 'ao_servers',                 'server', '1.59', null);
select "schema".add_foreign_key('backup', 'failover_mysql_replications', 'replication',            'failover_file_replications', 'pkey',   '1.28', '1.58');
select "schema".add_foreign_key('backup', 'failover_mysql_replications', 'replication',            'failover_file_replications', 'pkey',   '1.59', null);
select "schema".add_foreign_key('backup', 'failover_mysql_replications', 'mysql_server', 'mysql',  'mysql_servers',              'pkey',   '1.28', null);
