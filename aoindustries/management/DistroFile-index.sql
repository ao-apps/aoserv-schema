create index "DistroFile_operating_system_version_fkey" on management."DistroFile" (
  operating_system_version
);
create index "DistroFile_type_fkey" on management."DistroFile" (
  "type"
);
create index "DistroFile_linux_account_fkey" on management."DistroFile" (
  linux_account
);
create index "DistroFile_linux_group_fkey" on management."DistroFile" (
  linux_group
);
