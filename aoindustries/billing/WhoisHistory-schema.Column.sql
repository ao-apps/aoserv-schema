select "schema".add_column('billing', 'whois_history', 'pkey',         'pkey',       false,  true, false, 'a unique, generated identifier', '1.20', null);
select "schema".add_column('billing', 'whois_history', 'time',         'time',       false, false, false, 'the time the whois query was performed', '1.20', null);
select "schema".add_column('billing', 'whois_history', 'accounting',   'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', null);
select "schema".add_column('billing', 'whois_history', 'zone',         'zone',       false, false, false, 'the top level domain (zone) that was queried', '1.20', null);
select "schema".add_column('billing', 'whois_history', 'whois_output', 'string',     false, false, false, 'the output from the whois lookup', '1.20', null);
