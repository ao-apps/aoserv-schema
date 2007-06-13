begin;
insert into aoserv_permissions values(
    'set_business_administrator_password',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'set_interbase_server_user_password',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'set_linux_server_account_password',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'set_mysql_server_user_password',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'get_mysql_slave_status',
    (select count(*) from aoserv_permissions)
);
insert into aoserv_permissions values(
    'set_postgres_server_user_password',
    (select count(*) from aoserv_permissions)
);
commit;
