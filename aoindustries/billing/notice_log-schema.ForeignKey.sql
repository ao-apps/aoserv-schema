select "schema".add_foreign_key('billing', 'notice_log', 'accounting',  'account', 'businesses',   'accounting', '1.0a100', null);
select "schema".add_foreign_key('billing', 'notice_log', 'notice_type', 'billing', 'notice_types', 'type',       '1.0a100', null);
select "schema".add_foreign_key('billing', 'notice_log', 'transid',     'billing', 'transactions', 'transid',    '1.0a100', '1.68');
select "schema".add_foreign_key('billing', 'notice_log', 'transid',     'billing', 'transactions', 'transid',    '1.69',    null);
