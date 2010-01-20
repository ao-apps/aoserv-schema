begin;
insert into aoserv_roles values(1, 'AOINDUSTRIES', 'Read-Only');
insert into aoserv_roles values(2, 'AOINDUSTRIES', 'Master User');
insert into aoserv_roles values(3, 'AOINDUSTRIES', 'AOServ Daemon');
insert into aoserv_roles values(4, 'AOINDUSTRIES', 'AOWeb Struts');
insert into aoserv_roles values(5, 'AOINDUSTRIES', 'Business Administrator');
insert into aoserv_roles values(6, 'AOINDUSTRIES', 'AWStats Proxy');
commit;
select setval('aoserv_roles_pkey_seq', 7, true);
