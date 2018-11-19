select "schema".add_column('schema', 'schema_tables', 'name', 'string', false, true, true, 'the unique name', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'table_id', 'pkey', false, true, true, 'a unique ID for the table', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'display', 'string', false, false, true, 'the display name', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'is_public', 'boolean', false, false, true, 'if the data contained in the table is accessible to everybody', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'description', 'string', false, false, true, 'the description of the table', '1.0a100', null);
select "schema".add_column('schema', 'schema_tables', 'dataverse_editor', 'string', true, false, true, 'the full Java package.Class name of the editor', '1.0a100', '1.30');
select "schema".add_column('schema', 'schema_tables', 'since_version', 'string', false, false, true, 'the first aoserv_protocol version to have this table', '1.0a101', null);
select "schema".add_column('schema', 'schema_tables', 'last_version', 'string', true, false, true, 'the last aoserv_protocol version to have this table or null if still used', '1.0a104', null);
select "schema".add_column('schema', 'schema_tables', 'default_order_by', 'string', true, false, true, 'the default order by clause for client-side sorting', '1.4', '1.30');
