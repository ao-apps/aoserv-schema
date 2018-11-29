select "schema".add_foreign_key('schema', 'schema_types', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.69', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_types', 'sinceVersion',  'schema', 'aoserv_protocols', 'version', '1.81.18', null);
select "schema".add_foreign_key('schema', 'schema_types', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.69', '1.81.17');
select "schema".add_foreign_key('schema', 'schema_types', 'lastVersion',   'schema', 'aoserv_protocols', 'version', '1.81.18', null);
