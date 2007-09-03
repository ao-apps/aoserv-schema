create index distro_files_operating_system_version_idx on distro_files (
  operating_system_version
);
create index distro_files_type_idx on distro_files (
  "type"
);
create index distro_files_linux_account_idx on distro_files (
  linux_account
);
create index distro_files_linux_group_idx on distro_files (
  linux_group
);
