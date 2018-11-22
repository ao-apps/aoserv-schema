select "schema".add_column('email', 'email_domains', 'pkey',      'pkey',        false,  true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email', 'email_domains', 'domain',    'hostname',    false, false, false, 'the domain that is hosted in the email', '1.0a100', '1.68');
select "schema".add_column('email', 'email_domains', 'domain',    'domain_name', false, false, false, 'the domain that is hosted in the email', '1.69', null);
select "schema".add_column('email', 'email_domains', 'ao_server', 'fkey',        false, false, false, 'the pkey of the server that is hosting the email', '1.0a100', null);
select "schema".add_column('email', 'email_domains', 'package',   'package',     false, false, false, 'the owner of the domain', '1.0a100', '1.80');
select "schema".add_column('email', 'email_domains', 'package',   'accounting',  false, false, false, 'the owner of the domain', '1.80.0', null);
