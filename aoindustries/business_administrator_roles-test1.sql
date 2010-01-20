begin;
insert into business_administrator_roles values(1, 'root', 1);
insert into business_administrator_roles values(2, 'orion', 2);
insert into business_administrator_roles values(3, 'test_svr', 3);
insert into business_administrator_roles values(4, 'aoweb_app', 4);
insert into business_administrator_roles values(5, 'testuser', 5);
commit;
select setval ('"business_administrator_roles_pkey_seq"', 6, true);
