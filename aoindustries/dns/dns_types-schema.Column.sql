select "schema".add_column('dns', 'dns_types', 'type',         0, 'string',  false, true,  true, 'the type', '1.0a100', null);
select "schema".add_column('dns', 'dns_types', 'description',  1, 'string',  false, false, true, 'the description of the type', '1.0a100', null);
select "schema".add_column('dns', 'dns_types', 'is_mx',        2, 'boolean', false, false, true, 'flags which types use the MX weight', '1.0a100', '1.71');
select "schema".add_column('dns', 'dns_types', 'has_priority', 3, 'boolean', false, false, true, 'flags which types have a priority', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'has_weight',   4, 'boolean', false, false, true, 'flags which types have a weight', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'has_port',     5, 'boolean', false, false, true, 'flags which types have a port', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'param_ip',     6, 'boolean', false, false, true, 'flags if the parameter is a IP or a hostname', '1.0a100', null);
