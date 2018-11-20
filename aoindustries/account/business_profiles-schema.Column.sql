select "schema".add_column('account', 'business_profiles', 'pkey', 0, 'pkey', false, true, false, 'a unique primary key', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'priority', 2, 'int', false, false, false, 'the highest priority profile is used', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'name', 3, 'string', false, false, false, 'the name of the business', '1.0a100', null);
select "schema".add_column(
    'account',
    'business_profiles',
    'private',
    4,
    'boolean',
    false,
    false,
    false,
    'indicates if the business should not be listed
in publicly available lists',
    '1.0a100',
    null
);
select "schema".add_column('account', 'business_profiles', 'phone', 5, 'phone', false, false, false, 'the phone number', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'fax', 6, 'phone', true, false, false, 'the fax number', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'address1', 7, 'string', false, false, false, 'the street address of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'address2', 8, 'string', true, false, false, 'the street address of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'city',               9, 'city', false, false, false, 'the city', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'city',              10, 'string', false, false, false, 'the city', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'state',             11, 'state', true, false, false, 'the state or providence', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'state',             12, 'string', true, false, false, 'the state or providence', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'country',           13, 'country', false, false, false, 'the two-character country code', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'country',           14, 'string', false, false, false, 'the two-character country code', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'zip',               15, 'zip', true, false, false, 'the zip code', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'zip',               16, 'string', true, false, false, 'the zip code', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'send_invoice',      17, 'boolean', false, false, false, 'indicates to send a monthly invoice via regular mail', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'created',           18, 'time', false, false, false, 'the time this entry was created', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'billing_contact',   19, 'string', false, false, false, 'the name to contact for billing information', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'billing_email',     20, 'string', false, false, false, 'the email address to notify for billing', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'technical_contact', 21, 'string', false, false, false, 'the name to contact for technical information', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'technical_email',   22, 'string', false, false, false, 'the email address to notify for technical', '1.0a100', null);
