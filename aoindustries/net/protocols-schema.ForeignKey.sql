select "schema".add_foreign_key('net', 'protocols', 'port',         'net', 'net_ports',     'port',     '1.0a100', '1.68');
select "schema".add_foreign_key('net', 'protocols', 'port',         'net', 'net_ports',     'port',     '1.69',    '1.80');
select "schema".add_foreign_key('net', 'protocols', 'net_protocol', 'net', 'net_protocols', 'protocol', '1.0a105', '1.80');
