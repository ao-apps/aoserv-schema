create index failover_file_replications_retention_idx on failover_file_replications (
  retention
);
create index failover_file_replications_quota_gid_idx on failover_file_replications (
  quota_gid
);
