select "schema".add_column('email', 'email_blacklists', 'ip_address',     'string',  false,  true, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email', 'email_blacklists', 'is_dsbl',        'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email', 'email_blacklists', 'is_ordb',        'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email', 'email_blacklists', 'is_spamhaus',    'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email', 'email_blacklists', 'spamhaus_lists', 'string',   true, false, false, '', '1.0a106', '1.0a121');
