-- Each account may only be a member of the group one time
create unique index linux_account_groups_uni on linux_account_groups (
  linux_account,
  linux_group
);
-- Partial index to enforce only one primary group per account
create unique index linux_account_group_primary_group_uni on linux_account_groups (
  linux_account
) where is_primary;
create index linux_account_group_linux_account_type_idx on linux_account_groups (
  linux_account_type,
  linux_account
);
create index linux_account_group_ao_server_idx1 on linux_account_groups (
  ao_server,
  linux_account
);
create index linux_account_group_linux_group_type_idx on linux_account_groups (
  linux_group_type,
  linux_group
);
create index linux_account_group_ao_server_idx2 on linux_account_groups (
  ao_server,
  linux_group
);
create index linux_account_group_group_name_idx on linux_account_groups (
  group_name,
  linux_group
);
