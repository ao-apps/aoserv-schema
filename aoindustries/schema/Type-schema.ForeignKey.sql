select "schema".add_foreign_key('schema', 'schema_types', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.69', null);
select "schema".add_foreign_key('schema', 'schema_types', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.69', null);
