select "schema".add_column('postgresql', 'postgres_encodings', 'pkey',             'pkey',   false,  true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_encodings', 'encoding',         'string', false, false, true, 'the name of the encoding', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_encodings', 'postgres_version', 'fkey',   false, false, true, 'the version of PostgreSQL', '1.0a100', null);
