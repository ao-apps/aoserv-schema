select "schema".add_column('dns', 'dns_types', 'type',         'string',  false,  true, true, 'the type', '1.0a100', null);
select "schema".add_column('dns', 'dns_types', 'description',  'string',  false, false, true, 'the description of the type', '1.0a100', null);
select "schema".add_column('dns', 'dns_types', 'is_mx',        'boolean', false, false, true, 'flags which types use the MX weight', '1.0a100', '1.71');
select "schema".add_column('dns', 'dns_types', 'has_priority', 'boolean', false, false, true, 'flags which types have a priority', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'has_weight',   'boolean', false, false, true, 'flags which types have a weight', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'has_port',     'boolean', false, false, true, 'flags which types have a port', '1.72', null);
select "schema".add_column('dns', 'dns_types', 'param_ip',     'boolean', false, false, true, 'flags if the parameter is a IP or a hostname', '1.0a100', null);
