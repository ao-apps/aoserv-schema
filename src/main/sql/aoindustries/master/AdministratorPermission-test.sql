begin;
insert into master."AdministratorPermission" values(1, 'orion', 'set_mysql_server_user_password');
insert into master."AdministratorPermission" values(2, 'testuser', 'set_mysql_server_user_password');
insert into master."AdministratorPermission" values(3, 'orion', 'cancel_business');
insert into master."AdministratorPermission" values(4, 'testuser', 'add_ticket');
insert into master."AdministratorPermission" values(5, 'orion', 'add_ticket');
insert into master."AdministratorPermission" values(6, 'testuser', 'edit_ticket');
insert into master."AdministratorPermission" values(7, 'orion', 'edit_ticket');
insert into master."AdministratorPermission" values(8, 'aoweb_app', 'add_ticket');
insert into master."AdministratorPermission" values(9, 'test_svr', 'add_ticket');

SELECT setval ('master."AdministratorPermission_id_seq"', 10, true);
commit;
