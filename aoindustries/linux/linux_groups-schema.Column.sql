select "schema".add_column('linux', 'linux_groups', 'name', 0, 'string', false, true, false, 'the name of the group', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_groups', 'name', 1, 'group_id', false, true, false, 'the name of the group', '1.80.0', null);
select "schema".add_column('linux', 'linux_groups', 'package', 2, 'package', false, false, false, 'the package of the group', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_groups', 'package', 3, 'accounting', false, false, false, 'the package of the group', '1.80.0', null);
select "schema".add_column('linux', 'linux_groups', 'type', 4, 'string', false, false, false, 'the type of group', '1.0a100', null);
