-- <= 1.81.18
select "schema".add_column('billing', 'whois_history', 'pkey',         'pkey',       false,  true, false, 'a unique, generated identifier',                   '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'time',         'time',       false, false, false, 'the time the whois query was performed',           '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'accounting',   'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'zone',         'zone',       false, false, false, 'the top level domain (zone) that was queried',     '1.20', '1.81.18');
select "schema".add_column('billing', 'whois_history', 'whois_output', 'string',     false, false, false, 'the output from the whois lookup',                 '1.20', '1.81.18');
-- >= 1.81.19
select "schema".add_column('billing', 'WhoisHistory', 'id',                'pkey',        false,  true, false, 'a unique, generated identifier',                           '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'registrableDomain', 'domain_name', false, false, false, 'the registrable domain that was queried',                  '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'time',              'time',        false, false, false, 'the time the whois query was performed',                   '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'exitStatus',        'int',          true, false, false, 'the exit status from the whois lookup, null on exception', '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'output',            'string',      false, false, false, 'the output from the whois lookup',                         '1.81.19', null);
select "schema".add_column('billing', 'WhoisHistory', 'error',             'string',      false, false, false, 'the error from the whois lookup',                          '1.81.19', null);
