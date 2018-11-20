select "schema".add_foreign_key('linux', 'linux_group_accounts', 'group_name',                         'linux_groups',              'name',     '1.0a100', '1.80');
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'group_name',                         'linux_groups',              'name',     '1.80.0',  null);
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'username',                           'linux_accounts',            'username', '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'operating_system_version', 'public', 'operating_system_versions', 'pkey',     '1.80.1',  null);
