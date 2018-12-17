select "schema".add_foreign_key('linux', 'linux_group_accounts', 'group_name',               'linux',        'linux_groups',              'name',     '1.0a100', '1.80');
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'group_name',               'linux',        'linux_groups',              'name',     '1.80.0',  '1.81.17');
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'group',                    'linux',        'linux_groups',              'name',     '1.81.18',  null);
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'username',                 'linux',        'linux_accounts',            'username', '1.0a100', '1.81.17');
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'user',                     'linux',        'linux_accounts',            'username', '1.81.18', '1.81.21');
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'user',                     'linux',        'linux_accounts',            'username', '1.81.22', null);
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'operating_system_version', 'distribution', 'operating_system_versions', 'pkey',     '1.80.1',  '1.81.17');
select "schema".add_foreign_key('linux', 'linux_group_accounts', 'operatingSystemVersion',   'distribution', 'operating_system_versions', 'pkey',     '1.81.18', null);
