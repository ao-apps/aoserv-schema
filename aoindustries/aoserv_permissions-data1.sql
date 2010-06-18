begin;
-- business_administrators
insert into aoserv_permissions values(
    'set_business_administrator_password',
    (select count(*) from aoserv_permissions)
);
-- businesses
insert into aoserv_permissions values(
    'cancel_business',
    (select count(*) from aoserv_permissions)
);
-- credit_card_processors
insert into aoserv_permissions values(
    'get_credit_card_processors',
    (select count(*) from aoserv_permissions)
);
-- credit_card_transactions
insert into aoserv_permissions values(
    'add_credit_card_transaction',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'credit_card_transaction_authorize_completed',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'credit_card_transaction_sale_completed',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'get_credit_card_transactions',
    (select count(*) from aoserv_permissions)
);
-- credit_cards
insert into aoserv_permissions values(
    'get_credit_cards',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'add_credit_card',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'delete_credit_card',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'edit_credit_card',
    (select count(*) from aoserv_permissions)
);
-- linux_server_accounts
insert into aoserv_permissions values(
    'set_linux_server_account_password',
    (select count(*) from aoserv_permissions)
);
-- mysql_databases
insert into aoserv_permissions values(
    'check_mysql_tables',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'get_mysql_table_status',
    (select count(*) from aoserv_permissions)
);
-- mysql_servers
insert into aoserv_permissions values(
    'get_mysql_master_status',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'get_mysql_slave_status',
    (select count(*) from aoserv_permissions)
);
-- mysql_users
insert into aoserv_permissions values(
    'set_mysql_user_password',
    (select count(*) from aoserv_permissions)
);
-- postgres_server_users
insert into aoserv_permissions values(
    'set_postgres_server_user_password',
    (select count(*) from aoserv_permissions)
);
-- ticket_actions
insert into aoserv_permissions values(
    'add_ticket_annotation',
    (select count(*) from aoserv_permissions)
);
-- tickets
insert into aoserv_permissions values(
    'add_ticket',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'edit_ticket',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'get_ticket_details',
    (select count(*) from aoserv_permissions)
);
-- transactions
insert into aoserv_permissions values(
    'add_transaction',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'get_transaction_description',
    (select count(*) from aoserv_permissions)
);
-- virtual_servers
insert into aoserv_permissions values(
    'vnc_console',
    (select count(*) from aoserv_permissions)
);
commit;
