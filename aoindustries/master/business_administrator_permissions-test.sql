insert into business_administrator_permissions values(1, 'orion', 'set_mysql_server_user_password');
insert into business_administrator_permissions values(2, 'testuser', 'set_mysql_server_user_password');
insert into business_administrator_permissions values(3, 'orion', 'cancel_business');
insert into business_administrator_permissions values(4, 'testuser', 'add_ticket');
insert into business_administrator_permissions values(5, 'orion', 'add_ticket');
insert into business_administrator_permissions values(6, 'testuser', 'edit_ticket');
insert into business_administrator_permissions values(7, 'orion', 'edit_ticket');
insert into business_administrator_permissions values(8, 'aoweb_app', 'add_ticket');
insert into business_administrator_permissions values(9, 'test_svr', 'add_ticket');

SELECT setval ('master.business_administrator_permissions_pkey_seq', 10, true);
