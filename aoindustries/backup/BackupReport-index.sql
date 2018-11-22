create unique index "BackupReport_uni" on backup."BackupReport" (
  "date",
  server,
  package
);
create index "BackupReport_package_date_idx" on backup."BackupReport" (
  package,
  "date"
);
create index "BackupReport_server_fkey" on backup."BackupReport" (
  server
);
