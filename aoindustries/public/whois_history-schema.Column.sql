select "schema".add_column('whois_history', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated identifier', '1.20', null);
select "schema".add_column('whois_history', 'time', 1, 'time', false, false, false, 'the time the whois query was performed', '1.20', null);
select "schema".add_column('whois_history', 'accounting', 2, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', null);
select "schema".add_column('whois_history', 'zone', 3, 'zone', false, false, false, 'the top level domain (zone) that was queried', '1.20', null);
select "schema".add_column('whois_history', 'whois_output', 4, 'string', false, false, false, 'the output from the whois lookup', '1.20', null);
