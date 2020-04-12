select "schema".add_column('schema', 'schema_types', 'id',            'pkey',   false,  true, true, 'the unique number', '1.81.18', null);
select "schema".add_column('schema', 'schema_types', 'type',          'string', false,  true, true, 'the unique name', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_types', 'name',          'string', false,  true, true, 'the unique name', '1.81.18', null);
select "schema".add_column('schema', 'schema_types', 'num',           'int',    false,  true, true, 'the unique number', '1.0a100', '1.81.17');
select "schema".add_column('schema', 'schema_types', 'since_version', 'string', false, false, true, 'the first aoserv_protocol version this type was in', '1.69', '1.81.17');
select "schema".add_column('schema', 'schema_types', 'sinceVersion',  'string', false, false, true, 'the first aoserv_protocol version this type was in', '1.81.18', null);
select "schema".add_column('schema', 'schema_types', 'last_version',  'string',  true, false, true, 'the last version containing this type', '1.69', '1.81.17');
select "schema".add_column('schema', 'schema_types', 'lastVersion',   'string',  true, false, true, 'the last version containing this type', '1.81.18', null);
