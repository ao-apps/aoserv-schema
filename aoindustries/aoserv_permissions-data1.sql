begin;
-- business_administrators
insert into aoserv_permissions values(
    'set_business_administrator_password',
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
-- interbase_server_users
insert into aoserv_permissions values(
    'set_interbase_server_user_password',
    (select count(*) from aoserv_permissions)
);
-- linux_server_accounts
insert into aoserv_permissions values(
    'set_linux_server_account_password',
    (select count(*) from aoserv_permissions)
);
-- mysql_server_users
insert into aoserv_permissions values(
    'set_mysql_server_user_password',
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
-- postgres_server_users
insert into aoserv_permissions values(
    'set_postgres_server_user_password',
    (select count(*) from aoserv_permissions)
);
commit;
