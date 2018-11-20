select "schema".add_column('linux', 'linux_server_groups', 'pkey',      'pkey',     false,  true, false, 'a unique key', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_groups', 'name',      'string',   false, false, false, 'the group name', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_server_groups', 'name',      'group_id', false, false, false, 'the group name', '1.80.0', null);
select "schema".add_column('linux', 'linux_server_groups', 'ao_server', 'fkey',     false, false, false, 'the pkey of the ao_server the group is on', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_groups', 'gid',       'int',      false, false, false, 'the gid on that machine', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_server_groups', 'gid',       'fkey',     false, false, false, 'the gid on that machine', '1.69', '1.80');
select "schema".add_column('linux', 'linux_server_groups', 'gid',       'linux_id', false, false, false, 'the gid on that machine', '1.80.0', null);
select "schema".add_column('linux', 'linux_server_groups', 'created',   'date',     false, false, false, 'the time the group was added', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_server_groups', 'created',   'time',     false, false, false, 'the time the group was added', '1.69', null);
