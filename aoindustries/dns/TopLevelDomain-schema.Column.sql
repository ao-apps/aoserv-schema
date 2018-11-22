select "schema".add_column('dns', 'dns_tlds', 'domain',      'hostname',    false,  true, true, 'the domain', '1.0a100', '1.68');
select "schema".add_column('dns', 'dns_tlds', 'domain',      'domain_name', false,  true, true, 'the domain', '1.69', null);
select "schema".add_column('dns', 'dns_tlds', 'description', 'string',      false, false, true, '', '1.0a100', null);
