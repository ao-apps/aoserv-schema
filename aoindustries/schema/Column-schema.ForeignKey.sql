select "schema".add_foreign_key('schema_columns', 'table_name', 'schema_tables', 'name', '1.0a100', null);
select "schema".add_foreign_key('schema_columns', 'type', 'schema_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('schema_columns', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('schema_columns', 'last_version', 'aoserv_protocols', 'version', '1.0a104', null);
