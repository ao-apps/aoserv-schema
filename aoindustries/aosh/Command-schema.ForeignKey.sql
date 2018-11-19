select "schema".add_foreign_key('aosh_commands', 'table_name', 'schema_tables', 'name', '1.0a100', null);
select "schema".add_foreign_key('aosh_commands', 'since_version', 'aoserv_protocols', 'version', '1.0a101', null);
select "schema".add_foreign_key('aosh_commands', 'last_version', 'aoserv_protocols', 'version', '1.0a102', null);
