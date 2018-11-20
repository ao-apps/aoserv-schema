select "schema".add_foreign_key('ticket', 'tickets', 'brand',           'reseller', 'brands',                  'accounting', '1.46',    null);
select "schema".add_foreign_key('ticket', 'tickets', 'reseller',        'reseller', 'resellers',               'accounting', '1.44',    null);
select "schema".add_foreign_key('ticket', 'tickets', 'package',         'billing',  'packages',                'name',       '1.0a100', '1.0a125');
select "schema".add_foreign_key('ticket', 'tickets', 'accounting',      'account',  'businesses',              'accounting', '1.0a126', null);
select "schema".add_foreign_key('ticket', 'tickets', 'language',                    'languages',               'code',       '1.44',    null);
select "schema".add_foreign_key('ticket', 'tickets', 'administrator',   'account',  'business_administrators', 'username',   '1.0a100', '1.0a125');
select "schema".add_foreign_key('ticket', 'tickets', 'created_by',      'account',  'business_administrators', 'username',   '1.0a126', null);
select "schema".add_foreign_key('ticket', 'tickets', 'category',                    'ticket_categories',       'pkey',       '1.44',    null);
select "schema".add_foreign_key('ticket', 'tickets', 'ticket_type',                 'ticket_types',            'type',       '1.0a100', null);
select "schema".add_foreign_key('ticket', 'tickets', 'closed_by',       'account',  'business_administrators', 'username',   '1.0a100', '1.43');
select "schema".add_foreign_key('ticket', 'tickets', 'client_priority',             'ticket_priorities',       'priority',   '1.0a100', null);
select "schema".add_foreign_key('ticket', 'tickets', 'admin_priority',              'ticket_priorities',       'priority',   '1.0a100', '1.9');
select "schema".add_foreign_key('ticket', 'tickets', 'admin_priority',              'ticket_priorities',       'priority',   '1.10',    null);
select "schema".add_foreign_key('ticket', 'tickets', 'technology',      'public',   'technology_names',        'name',       '1.0a100', '1.43');
select "schema".add_foreign_key('ticket', 'tickets', 'status',                      'ticket_stati',            'status',     '1.0a100', null);
select "schema".add_foreign_key('ticket', 'tickets', 'assigned_to',     'account',  'business_administrators', 'username',   '1.0a125', '1.43');

