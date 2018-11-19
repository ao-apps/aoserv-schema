select "schema".add_column('schema', 'aoserv_protocols', 'version', 'string', false, true, true, 'the unique version number', '1.0a101', null);
select "schema".add_column('schema', 'aoserv_protocols', 'created', 'date', false, false, true, 'the time the version was added', '1.0a101', null);
select "schema".add_column('schema', 'aoserv_protocols', 'comments', 'string', false, false, true, 'any comments about this version', '1.0a101', null);
select "schema".add_column('schema', 'aoserv_protocols', 'last_used', 'date', true, false, true, 'the date this protocol was last used', '1.9', null);
