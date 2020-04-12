create index "MysqlReplication_ao_server_fkey" on backup."MysqlReplication" (
  ao_server
);
create index "MysqlReplication_replication_fkey" on backup."MysqlReplication" (
  replication
);
create index "MysqlReplication_mysql_server_fkey" on backup."MysqlReplication" (
  mysql_server
);
