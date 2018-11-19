select "schema".add_foreign_key('protocols', 'port', 'net_ports', 'port', '1.0a100', '1.68');
select "schema".add_foreign_key('protocols', 'port', 'net_ports', 'port', '1.69', '1.80');
select "schema".add_foreign_key('protocols', 'net_protocol', 'net_protocols', 'protocol', '1.0a105', '1.80');
