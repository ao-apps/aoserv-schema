create index "FileReplication_retention_fkey" on backup."FileReplication" (
  retention
);
create index "FileReplication_quota_gid_fkey" on backup."FileReplication" (
  quota_gid
);
