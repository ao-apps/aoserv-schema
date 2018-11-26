select "schema".add_foreign_key('distribution.management', 'distro_files', 'operating_system_version', 'distribution',            'operating_system_versions', 'pkey',     '1.0a108', null);
select "schema".add_foreign_key('distribution.management', 'distro_files', 'type',                     'distribution.management', 'distro_file_types',         'type',     '1.0a100', null);
select "schema".add_foreign_key('distribution.management', 'distro_files', 'linux_account',            'linux',                   'linux_accounts',            'username', '1.0a100', null);
select "schema".add_foreign_key('distribution.management', 'distro_files', 'linux_group',              'linux',                   'linux_groups',              'name',     '1.0a100', '1.80');
select "schema".add_foreign_key('distribution.management', 'distro_files', 'linux_group',              'linux',                   'linux_groups',              'name',     '1.80.0',  null);
