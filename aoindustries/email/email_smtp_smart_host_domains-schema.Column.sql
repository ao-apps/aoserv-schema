select "schema".add_column('email', 'email_smtp_smart_host_domains', 'pkey',             'pkey',        false,  true, false, 'a generated unique key', '1.57', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'smart_host',       'fkey',        false, false, false, 'the Smart Host that is being configured', '1.57', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain',           'hostname',    false, false, false, 'the specific domain that is being configured', '1.57', '1.68');
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain',           'domain_name', false, false, false, 'the specific domain that is being configured', '1.69', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain_out_burst', 'int',          true, false, false, 'the domain-specific email burst limit, null means unlimited', '1.57', null);
select "schema".add_column('email', 'email_smtp_smart_host_domains', 'domain_out_rate',  'float',        true, false, false, 'the domain-specific email rate, null means unlimited', '1.57', null);
