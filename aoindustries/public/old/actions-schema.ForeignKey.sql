select "schema".add_foreign_key('actions', 'ticket_id', 'tickets', 'pkey', '1.0a100', '1.43');
select "schema".add_foreign_key('actions', 'administrator', 'business_administrators', 'username', '1.0a100', '1.43');
select "schema".add_foreign_key('actions', 'action_type', 'action_types', 'type', '1.0a100', '1.43');
