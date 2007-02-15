create table aoserv_permissions (
  name text constraint aoserv_permissions_pkey primary key,
  sort_order smallint unique
);
grant all on aoserv_permissions to aoadmin;
grant select on aoserv_permissions to aoserv_app;

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
    'set_postgres_server_user_password',
    (select count(*) from aoserv_permissions)
);
commit;
