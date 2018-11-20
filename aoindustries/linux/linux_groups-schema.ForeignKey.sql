select "schema".add_foreign_key('linux', 'linux_groups', 'type',               'linux_group_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('linux', 'linux_groups', 'package', 'billing', 'packages',          'name', '1.0a100', '1.80');
select "schema".add_foreign_key('linux', 'linux_groups', 'package', 'billing', 'packages',          'name', '1.80.0',  null);
