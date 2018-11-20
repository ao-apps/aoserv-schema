select "schema".add_foreign_key('billing', 'notice_log', 'accounting',  'public', 'businesses',   'accounting', '1.0a100', null);
select "schema".add_foreign_key('billing', 'notice_log', 'notice_type',           'notice_types', 'type',       '1.0a100', null);
select "schema".add_foreign_key('billing', 'notice_log', 'transid',               'transactions', 'transid',    '1.0a100', '1.68');
select "schema".add_foreign_key('billing', 'notice_log', 'transid',               'transactions', 'transid',    '1.69',    null);
