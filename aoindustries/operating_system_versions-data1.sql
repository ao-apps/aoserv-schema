select setval('operating_system_versions_pkey_seq', 1, false);
begin;
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('debian', '3.0r1', 'Woody', 'i386', 'Debian 3.0r1 (i386)', false, 1);

insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'alpha', 'Gentoo 1.4 (alpha)', false, 2);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'amd64', 'Gentoo 1.4 (amd64)', false, 3);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'hppa', 'Gentoo 1.4 (hppa)', false, 4);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'i686', 'Gentoo 1.4 (i686)', false, 5);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'ppc', 'Gentoo 1.4 (ppc)', false, 6);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'sparc', 'Gentoo 1.4 (sparc)', false, 7);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('gentoo', '1.4', '1.4', 'sparc64', 'Gentoo 1.4 (sparc64)', false, 8);

insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '8.0', '8.0', 'i586', 'Mandrake 8.0 (i586)', false, 9);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '9.0', '9.0', 'i586', 'Mandrake 9.0 (i586)', false, 10);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '9.1', '9.1', 'i586', 'Mandrake 9.1 (i586)', false, 11);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '9.2', '9.2', 'i586', 'Mandrake 9.2 (i586)', false, 12);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '10.0', '10.0', 'i586', 'Mandrake 10.0 (i586)', false, 13);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '10.1', '10.1', 'i586', 'Mandrake 10.1 (i586)', true, 14);

insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '3.3', '3.3', 'i386', 'RedHat 3.3 (i386)', false, 18);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '4.0', '4.0', 'i386', 'RedHat 4.0 (i386)', false, 19);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '4.1', '4.1', 'i386', 'RedHat 4.1 (i386)', false, 20);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '4.2', 'Biltmore', 'i386', 'RedHat 4.2 (i386)', false, 21);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '5.0', 'Hurricane', 'i586', 'RedHat 5.0 (i586)', false, 22);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '5.1', 'Manhattan', 'i586', 'RedHat 5.1 (i586)', false, 23);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '5.2', 'Apollo', 'i586', 'RedHat 5.2 (i586)', false, 24);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '6.0', 'Hedwig', 'i686', 'RedHat 6.0 (i686)', false, 25);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '6.1', 'Cartman', 'i686', 'RedHat 6.1 (i686)', false, 26);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '6.2', 'Zoot', 'i686', 'RedHat 6.2 (i686)', false, 27);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '7.0', 'Guinness', 'i686', 'RedHat 7.0 (i686)', false, 28);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '7.1', 'Seawolf', 'i686', 'RedHat 7.1 (i686)', false, 29);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '7.2', 'Enigma', 'i686', 'RedHat 7.2 (i686)', false, 30);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '7.3', 'Valhalla', 'i686', 'RedHat 7.3 (i686)', false, 31);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '8.0', 'Psyche', 'i686', 'RedHat 8.0 (i686)', false, 32);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', '9', 'Shrike', 'i686', 'RedHat 9 (i686)', false, 33);

insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', 'ES 2.1', 'ES 2.1', 'i686', 'RedHat ES 2.1 (i686)', false, 34);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('redhat', 'ES 3.0', 'ES 3.0', 'i686', 'RedHat ES 3.0 (i686)', false, 35);

insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '3.0', '3.0', 'i286', 'Windows 3.0 (i286)', false, 36);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '3.1', '3.1', 'i286', 'Windows 3.1 (i286)', false, 37);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '3.11', '3.11', 'i386', 'Windows 3.11 for Workgroups (i386)', false, 38);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '4.0', '95', 'i386', 'Windows 95 (i386)', false, 39);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '4.10', '98', 'i386', 'Windows 98 (i386)', false, 40);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '4.90', '98 SE', 'i386', 'Windows 98 SE (i386)', false, 41);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', 'NT 4.0', 'NT 4.0', 'i386', 'Windows NT 4.0 (i386)', false, 42);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', 'NT 5.0', '2000', 'i386', 'Windows 2000 (i386)', false, 43);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', 'NT 5.1', 'XP', 'i386', 'Windows XP (i386)', false, 44);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('windows', '2003 Server', '2003 Server', 'i386', 'Windows 2003 Server (i386)', false, 45);

insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandrake', '10.2', '10.2', 'i586', 'Mandrake 10.2 (i586)', false, 15);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandriva', 'LE2005', 'LE2005', 'i586', 'Mandriva Limited Edition 2005 (i586)', false, 16);
insert into operating_system_versions (operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values('mandriva', '2006.0', '2006.0', 'i586', 'Mandriva 2006 (i586)', true, 17);
commit;
