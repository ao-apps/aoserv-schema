select "schema".add_foreign_key('schema', 'schema_foreign_keys', 'key_column',     'schema', 'schema_columns',      'pkey',    '1.0a100', null);
select "schema".add_foreign_key('schema', 'schema_foreign_keys', 'foreign_column', 'schema', 'schema_columns',      'pkey',    '1.0a100', null);
select "schema".add_foreign_key('schema', 'schema_foreign_keys', 'tied_bridge',    'schema', 'schema_foreign_keys', 'pkey',    '1.0a100', '1.30');
select "schema".add_foreign_key('schema', 'schema_foreign_keys', 'since_version',  'schema', 'aoserv_protocols',    'version', '1.0a101', null);
select "schema".add_foreign_key('schema', 'schema_foreign_keys', 'last_version',   'schema', 'aoserv_protocols',    'version', '1.0a104', null);
