select "schema".add_foreign_key('schema', 'schema_columns', 'table_name',    'schema', 'schema_tables',    'name',    '1.0a100', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'type',          'schema', 'schema_types',     'type',    '1.0a100', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('schema', 'schema_columns', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.0a104', null);
