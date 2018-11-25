select "schema".add_column('linux', 'linux_group_accounts', 'pkey',                     'pkey',     false,  true, false, 'a generated unique number', '1.0a100', null);
select "schema".add_column('linux', 'linux_group_accounts', 'group_name',               'string',   false, false, false, 'the linux group name', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_group_accounts', 'group_name',               'group_id', false, false, false, 'the linux group name', '1.80.0', null);
select "schema".add_column('linux', 'linux_group_accounts', 'username',                 'username', false, false, false, 'the linux account that is an alternate member', '1.0a100', null);
select "schema".add_column('linux', 'linux_group_accounts', 'is_primary',               'boolean',  false, false, false, 'flag showing that this group is the user''s primary group', '1.0a100', null);
select "schema".add_column('linux', 'linux_group_accounts', 'operating_system_version', 'fkey',      true, false, false, 'the version of operating system where this group and user are associated, or null for all operating system versions', '1.80.1', null);