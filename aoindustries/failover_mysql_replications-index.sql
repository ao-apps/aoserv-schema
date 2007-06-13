create index failover_mysql_replications_replication_ind on failover_mysql_replications (
  replication
);
create index failover_mysql_replications_mysql_server_ind on failover_mysql_replications (
  mysql_server
);
