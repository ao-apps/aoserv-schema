begin;
-- business_administrators
insert into aoserv_permissions values(
    'set_business_administrator_password',
    0
);
-- businesses
insert into aoserv_permissions values(
    'cancel_business',
    1
);
-- credit_card_processors
insert into aoserv_permissions values(
    'get_credit_card_processors',
    2
);
-- credit_card_transactions
insert into aoserv_permissions values(
    'add_credit_card_transaction',
    3
);
insert into aoserv_permissions values(
    'credit_card_transaction_authorize_completed',
    4
);
insert into aoserv_permissions values(
    'credit_card_transaction_sale_completed',
    5
);
insert into aoserv_permissions values(
    'get_credit_card_transactions',
    6
);
-- credit_cards
insert into aoserv_permissions values(
    'get_credit_cards',
    7
);
insert into aoserv_permissions values(
    'add_credit_card',
    8
);
insert into aoserv_permissions values(
    'delete_credit_card',
    9
);
insert into aoserv_permissions values(
    'edit_credit_card',
    10
);
-- linux_server_accounts
insert into aoserv_permissions values(
    'set_linux_server_account_password',
    11
);
-- mysql_server_users
insert into aoserv_permissions values(
    'set_mysql_server_user_password',
    12
);
-- mysql_servers
insert into aoserv_permissions values(
    'get_mysql_master_status',
    13
);
insert into aoserv_permissions values(
    'get_mysql_slave_status',
    14
);
-- postgres_server_users
insert into aoserv_permissions values(
    'set_postgres_server_user_password',
    15
);
-- tickets
insert into aoserv_permissions values(
    'add_ticket',
    16
);
insert into aoserv_permissions values(
    'edit_ticket',
    17
);
-- virtual_servers
insert into aoserv_permissions values(
    'vnc_console',
    18
);
commit;
