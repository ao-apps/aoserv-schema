select "schema".add_column('country_codes', 'code',                 'country', false,  true, true, 'the two-character code for the country', '1.0a100', '1.68');
select "schema".add_column('country_codes', 'code',                 'string',  false,  true, true, 'the two-character code for the country', '1.69', null);
select "schema".add_column('country_codes', 'name',                 'string',  false, false, true, 'the name of the country', '1.0a100', null);
select "schema".add_column('country_codes', 'charge_com_supported', 'boolean', false, false, true, 'if the country is supported by Charge.Com', '1.0a100', null);
select "schema".add_column('country_codes', 'charge_com_name',      'string',   true, false, true, 'the Charge.Com specific name', '1.0a100', null);
