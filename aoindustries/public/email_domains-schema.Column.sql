select "schema".add_column('email_domains', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('email_domains', 'domain', 1, 'hostname', false, false, false, 'the domain that is hosted in the email', '1.0a100', '1.68');
select "schema".add_column('email_domains', 'domain', 2, 'domain_name', false, false, false, 'the domain that is hosted in the email', '1.69', null);
select "schema".add_column('email_domains', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that is hosting the email', '1.0a100', null);
select "schema".add_column('email_domains', 'package', 4, 'package', false, false, false, 'the owner of the domain', '1.0a100', '1.80');
select "schema".add_column('email_domains', 'package', 5, 'accounting', false, false, false, 'the owner of the domain', '1.80.0', null);
