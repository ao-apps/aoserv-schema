select "schema".add_column('ticket', 'actions', 'pkey',          'pkey',     false,  true, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'ticket_id',     'fkey',      true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'administrator', 'username', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'time',          'time',     false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'action_type',   'string',   false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'old_value',     'string',    true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('ticket', 'actions', 'comments',      'string',    true, false, false, '', '1.0a100', '1.43');
