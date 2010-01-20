select setval('aoserv_role_permissions_pkey_seq', 1, true);
begin;
-- Read-Only
-- None
-- Master User
insert into aoserv_role_permissions select nextval('aoserv_role_permissions_pkey_seq'), 2, "name" from aoserv_permissions; -- All permissions
-- AOServ Daemon
insert into aoserv_role_permissions values(default, 3, 'add_ticket');
-- AOWeb Struts
insert into aoserv_role_permissions values(default, 4, 'add_ticket');
-- Business Administrator
insert into aoserv_role_permissions values(default, 5, 'add_ticket');
insert into aoserv_role_permissions values(default, 5, 'edit_ticket');
insert into aoserv_role_permissions values(default, 5, 'set_mysql_user_password');
-- AWStats Proxy
commit;
