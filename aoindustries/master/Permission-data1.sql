begin;
-- account.Administrator
insert into master."Permission" values(
    'set_business_administrator_password',
    (select count(*) from master."Permission")
);
-- account.Account
insert into master."Permission" values(
    'cancel_business',
    (select count(*) from master."Permission")
);
-- credit_card_processors
insert into master."Permission" values(
    'get_credit_card_processors',
    (select count(*) from master."Permission")
);
-- credit_card_transactions
insert into master."Permission" values(
    'add_credit_card_transaction',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'credit_card_transaction_authorize_completed',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'credit_card_transaction_sale_completed',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'get_credit_card_transactions',
    (select count(*) from master."Permission")
);
-- credit_cards
insert into master."Permission" values(
    'get_credit_cards',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'add_credit_card',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'delete_credit_card',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'edit_credit_card',
    (select count(*) from master."Permission")
);
-- linux_server_accounts
insert into master."Permission" values(
    'set_linux_server_account_password',
    (select count(*) from master."Permission")
);
-- mysql_databases
insert into master."Permission" values(
    'check_mysql_tables',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'get_mysql_table_status',
    (select count(*) from master."Permission")
);
-- mysql_server_users
insert into master."Permission" values(
    'set_mysql_server_user_password',
    (select count(*) from master."Permission")
);
-- mysql_servers
insert into master."Permission" values(
    'get_mysql_master_status',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'get_mysql_slave_status',
    (select count(*) from master."Permission")
);
-- postgres_server_users
insert into master."Permission" values(
    'set_postgres_server_user_password',
    (select count(*) from master."Permission")
);
-- tickets
insert into master."Permission" values(
    'add_ticket',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'edit_ticket',
    (select count(*) from master."Permission")
);
-- infrastructure.VirtualServer
insert into master."Permission" values(
    'control_virtual_server',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'get_virtual_server_status',
    (select count(*) from master."Permission")
);
insert into master."Permission" values(
    'vnc_console',
    (select count(*) from master."Permission")
);
commit;
