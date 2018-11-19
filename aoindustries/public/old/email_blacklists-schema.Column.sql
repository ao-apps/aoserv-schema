select "schema".add_column('email_blacklists', 'ip_address', 0, 'string', false, true, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'is_dsbl', 1, 'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'is_ordb', 2, 'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'is_spamhaus', 3, 'boolean', false, false, false, '', '1.0a105', '1.0a121');
select "schema".add_column('email_blacklists', 'spamhaus_lists', 4, 'string', true, false, false, '', '1.0a106', '1.0a121');
