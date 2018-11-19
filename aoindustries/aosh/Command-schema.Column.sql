select "schema".add_column('aosh_commands', 'command', 'string', false, true, true, 'the unique command', '1.0a100', null);
select "schema".add_column('aosh_commands', 'table_name', 'string', true, false, true, 'the name of the table the column is in, is a global command if the column is null', '1.0a100', null);
select "schema".add_column('aosh_commands', 'short_desc', 'string', false, false, true, 'a short description of the command', '1.0a100', null);
select "schema".add_column('aosh_commands', 'syntax', 'string', false, false, true, 'the syntax of the command', '1.0a100', null);
select "schema".add_column('aosh_commands', 'since_version', 'string', false, false, true, 'the first aoserv_protocol version having this command', '1.0a101', null);
select "schema".add_column('aosh_commands', 'last_version', 'string', true, false, true, 'the last aoserv_protocol version having this command', '1.0a102', null);
