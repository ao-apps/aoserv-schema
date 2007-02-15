insert into business_administrator_permissions values(1, 'orion', 'set_mysql_server_user_password');
insert into business_administrator_permissions values(2, 'testuser', 'set_mysql_server_user_password');

SELECT setval ('"business_administrator_permissions_pkey_seq"', 2, true);
