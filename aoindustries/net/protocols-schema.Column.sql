select "schema".add_column('net', 'protocols', 'protocol', 0, 'string', false, true, true, 'the unique name of the protocol', '1.0a100', null);
select "schema".add_column('net', 'protocols', 'port', 1, 'int', false, false, true, 'the default port of the protocol', '1.0a100', '1.68');
select "schema".add_column('net', 'protocols', 'port', 2, 'fkey', false, false, true, 'the default port of the protocol', '1.69', '1.80');
select "schema".add_column('net', 'protocols', 'port', 3, 'net_port', false, false, true, 'the default port of the protocol', '1.80.0', null);
select "schema".add_column('net', 'protocols', 'name', 4, 'string', false, false, true, 'the name of the service', '1.0a100', null);
select "schema".add_column('net', 'protocols', 'is_user_service', 5, 'boolean', false, false, true, 'indicates that a user may add and remove this service', '1.0a105', null);
select "schema".add_column('net', 'protocols', 'net_protocol', 6, 'string', false, false, true, 'the default network protocol for this protocol', '1.0a105', '1.80');
