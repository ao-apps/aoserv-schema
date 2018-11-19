select "schema".add_column('postgres_encodings', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('postgres_encodings', 'encoding', 1, 'string', false, false, true, 'the name of the encoding', '1.0a100', null);
select "schema".add_column('postgres_encodings', 'postgres_version', 2, 'fkey', false, false, true, 'the version of PostgreSQL', '1.0a100', null);
