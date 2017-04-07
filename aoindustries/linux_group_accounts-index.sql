-- Unique group, user when osv not provided
create unique index linux_group_accounts_uni_no_osv on linux_group_accounts (
  group_name,
  username
) where operating_system_version is null;

-- Unique group, user when osv provided
create unique index linux_group_accounts_uni_osv on linux_group_accounts (
  group_name,
  username,
  operating_system_version
) where operating_system_version is not null;

-- TODO: How to ensure no duplicate between osv and non-osv?

create index linux_group_accounts_username_idx on linux_group_accounts (
  username
);

create index linux_group_accounts_operating_system_version_idx on linux_group_accounts (
  operating_system_version
);
