select "schema".add_column('schema_types', 'type', 'string', false, true, true, 'the unique name', '1.0a100', null);
select "schema".add_column('schema_types', 'num', 'int', false, true, true, 'the unique number', '1.0a100', null);
select "schema".add_column('schema_types', 'since_version', 'string', false, false, true, 'the first aoserv_protocol version this type was in', '1.69', null);
select "schema".add_column('schema_types', 'last_version', 'string', true, false, true, 'the last version containing this type', '1.69', null);
