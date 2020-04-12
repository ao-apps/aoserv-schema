select "schema".add_foreign_key('billing', 'WhoisHistoryAccount', 'whoisHistory', 'billing', 'WhoisHistory', 'id',         '1.81.19', null);
select "schema".add_foreign_key('billing', 'WhoisHistoryAccount', 'account',      'account', 'businesses',   'accounting', '1.81.19', null);
