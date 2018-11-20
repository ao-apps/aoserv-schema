select "schema".add_column('linux', 'linux_groups', 'name',    'string',     false,  true, false, 'the name of the group', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_groups', 'name',    'group_id',   false,  true, false, 'the name of the group', '1.80.0', null);
select "schema".add_column('linux', 'linux_groups', 'package', 'package',    false, false, false, 'the package of the group', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_groups', 'package', 'accounting', false, false, false, 'the package of the group', '1.80.0', null);
select "schema".add_column('linux', 'linux_groups', 'type',    'string',     false, false, false, 'the type of group', '1.0a100', null);
