create index majordomo_servers_linux_server_account_idx on majordomo_servers (
  linux_server_account
);
create index majordomo_servers_linux_server_group_idx on majordomo_servers (
  linux_server_group
);
create index majordomo_servers_version_idx on majordomo_servers (
  version
);
create index majordomo_servers_majordomo_pipe_address_idx on majordomo_servers (
  majordomo_pipe_address
);
create index majordomo_servers_owner_majordomo_add_idx on majordomo_servers (
  owner_majordomo_add
);
create index majordomo_servers_majordomo_owner_add_idx on majordomo_servers (
  majordomo_owner_add
);
create index majordomo_servers_backup_level_idx on majordomo_servers (
  backup_level
);
create index majordomo_servers_backup_retention_idx on majordomo_servers (
  backup_retention
);
