create index failover_file_replications_to_server_idx on failover_file_replications (
  to_server
);
create index failover_file_replications_retention_idx on failover_file_replications (
  retention
);
