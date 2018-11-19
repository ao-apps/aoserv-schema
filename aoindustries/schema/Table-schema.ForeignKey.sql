select "schema".add_foreign_key('schema', 'schema_tables', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('schema', 'schema_tables', 'last_version',  'aoserv_protocols', 'version', '1.0a104', null);
