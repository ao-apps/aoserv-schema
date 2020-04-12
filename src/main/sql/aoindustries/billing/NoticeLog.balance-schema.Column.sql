select "schema".add_column('billing', 'NoticeLog.balance', 'id',        'pkey',   false,  true, false, 'a generated primary key',                         '1.83.0', null);
select "schema".add_column('billing', 'NoticeLog.balance', 'noticeLog', 'fkey',   false, false, false, 'the ID of the NoticeLog this balance is part of', '1.83.0', null);
select "schema".add_column('billing', 'NoticeLog.balance', 'balance',   'money',  false, false, false, 'the balance for a single currency',               '1.83.0', null);
