select "schema".add_column('billing', 'WhoisHistoryAccount', 'id',           'pkey',       false,  true, false, 'a unique, generated identifier', '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistoryAccount', 'whoisHistory', 'fkey',       false, false, false, 'the id of the WhoisHistory',     '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistoryAccount', 'account',      'accounting', false, false, false, 'the id of the Account',          '1.81.19', null);
