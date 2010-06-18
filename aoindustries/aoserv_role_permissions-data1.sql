select setval('aoserv_role_permissions_pkey_seq', 1, true);
begin;
-- Read-Only
insert into aoserv_role_permissions values(default, 1, 'check_mysql_tables');
insert into aoserv_role_permissions values(default, 1, 'get_credit_card_processors');
insert into aoserv_role_permissions values(default, 1, 'get_credit_cards');
insert into aoserv_role_permissions values(default, 1, 'get_credit_card_transactions');
insert into aoserv_role_permissions values(default, 1, 'get_mysql_master_status');
insert into aoserv_role_permissions values(default, 1, 'get_mysql_slave_status');
insert into aoserv_role_permissions values(default, 1, 'get_mysql_table_status');
insert into aoserv_role_permissions values(default, 1, 'get_ticket_details');
insert into aoserv_role_permissions values(default, 1, 'get_transaction_description');
-- Master User
insert into aoserv_role_permissions select nextval('aoserv_role_permissions_pkey_seq'), 2, "name" from aoserv_permissions; -- All permissions
-- AOServ Daemon
insert into aoserv_role_permissions values(default, 3, 'add_ticket');
-- AOWeb Struts
insert into aoserv_role_permissions values(default, 4, 'add_ticket');
insert into aoserv_role_permissions values(default, 4, 'add_transaction'); -- Accepts credit card payments
-- Business Administrator
insert into aoserv_role_permissions values(default, 5, 'add_ticket_annotation');
insert into aoserv_role_permissions values(default, 5, 'add_ticket');
insert into aoserv_role_permissions values(default, 5, 'edit_ticket');
insert into aoserv_role_permissions values(default, 5, 'get_ticket_details');
insert into aoserv_role_permissions values(default, 5, 'set_mysql_user_password');
insert into aoserv_role_permissions values(default, 5, 'get_transaction_description');
-- AWStats Proxy
commit;
