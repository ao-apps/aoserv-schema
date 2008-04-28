begin;
-- business_administrators
insert into aoserv_permissions values(
    'set_business_administrator_password',
    0
);
-- credit_card_processors
insert into aoserv_permissions values(
    'get_credit_card_processors',
    1
);
-- credit_card_transactions
insert into aoserv_permissions values(
    'add_credit_card_transaction',
    2
);
insert into aoserv_permissions values(
    'credit_card_transaction_sale_completed',
    3
);
insert into aoserv_permissions values(
    'get_credit_card_transactions',
    4
);
-- credit_cards
insert into aoserv_permissions values(
    'get_credit_cards',
    5
);
insert into aoserv_permissions values(
    'add_credit_card',
    6
);
insert into aoserv_permissions values(
    'delete_credit_card',
    7
);
insert into aoserv_permissions values(
    'edit_credit_card',
    8
);
-- linux_server_accounts
insert into aoserv_permissions values(
    'set_linux_server_account_password',
    10
);
-- mysql_server_users
insert into aoserv_permissions values(
    'set_mysql_server_user_password',
    11
);
-- mysql_servers
insert into aoserv_permissions values(
    'get_mysql_master_status',
    12
);
insert into aoserv_permissions values(
    'get_mysql_slave_status',
    13
);
-- postgres_server_users
insert into aoserv_permissions values(
    'set_postgres_server_user_password',
    14
);
commit;
