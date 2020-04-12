select "schema".add_foreign_key('schema', 'schema_tables', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.0a101', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_tables', 'sinceVersion',  'schema', 'aoserv_protocols', 'version', '1.81.18', null);
select "schema".add_foreign_key('schema', 'schema_tables', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.0a104', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_tables', 'lastVersion',   'schema', 'aoserv_protocols', 'version', '1.81.18', null);
