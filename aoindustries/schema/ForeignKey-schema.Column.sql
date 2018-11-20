select "schema".add_column('schema', 'schema_foreign_keys', 'pkey',           'pkey',    false,  true, true, 'a generated unique pkey', '1.0a100', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'key_column',     'fkey',    false, false, true, 'the column that references another column', '1.0a100', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'foreign_column', 'fkey',    false, false, true, 'the referenced column', '1.0a100', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'is_bridge',      'boolean', false, false, true, 'the foreign key should be used as a dataverse bridge', '1.0a100', '1.30');
select "schema".add_column('schema', 'schema_foreign_keys', 'tied_bridge',    'fkey',     true, false, true, 'the bridge that should be automatically followed', '1.0a100', '1.30');
select "schema".add_column('schema', 'schema_foreign_keys', 'since_version',  'string',  false, false, true, 'the first aoserv_protocol version to have this reference', '1.0a101', null);
select "schema".add_column('schema', 'schema_foreign_keys', 'last_version',   'string',   true, false, true, 'the last aoserv_protocol version to have this references, or null if not yet removed', '1.0a104', null);
