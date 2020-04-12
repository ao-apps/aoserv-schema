select "schema".add_foreign_key('aosh', 'aosh_commands', 'table_name',    'schema', 'schema_tables',    'name',    '1.0a100', '1.81.17');
select "schema".add_foreign_key('aosh', 'aosh_commands', 'table',         'schema', 'schema_tables',    'name',    '1.81.18', null);
select "schema".add_foreign_key('aosh', 'aosh_commands', 'since_version', 'schema', 'aoserv_protocols', 'version', '1.0a101', '1.81.17');
select "schema".add_foreign_key('aosh', 'aosh_commands', 'sinceVersion',  'schema', 'aoserv_protocols', 'version', '1.81.18', null);
select "schema".add_foreign_key('aosh', 'aosh_commands', 'last_version',  'schema', 'aoserv_protocols', 'version', '1.0a102', '1.81.17');
select "schema".add_foreign_key('aosh', 'aosh_commands', 'lastVersion',   'schema', 'aoserv_protocols', 'version', '1.81.18', null);
