select "schema".add_column('billing', 'Currency', 'currencyCode',             'string', false, true,  true, 'the ISO 4217 currency code of this currency',           '1.83.0', null);
select "schema".add_column('billing', 'Currency', 'fractionDigits',           'short',  false, false, true, 'the number of fraction digits used with this currency', '1.83.0', null);
select "schema".add_column('billing', 'Currency', 'autoEnableMinimumPayment', 'money',  false, false, true, 'the minimum payment for auto-enabling accounts',        '1.83.0', null);
