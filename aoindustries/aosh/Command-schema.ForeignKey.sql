select "schema".add_foreign_key('aosh', 'aosh_commands', 'table_name',    'schema', 'schema_tables',    'name',    '1.0a100', null);
select "schema".add_foreign_key('aosh', 'aosh_commands', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('aosh', 'aosh_commands', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.0a102', null);
