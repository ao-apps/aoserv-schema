/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2013, 2017, 2018, 2019, 2020, 2021, 2022, 2024, 2025  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

COPY linux."User" (username, "name", office_location, office_phone, home_phone, "type", shell, created, disable_log) FROM stdin;
xvfb	Xvfb Process	\N	\N	\N	application	/bin/bash	2001-09-04 12:01:43-05	\N
bin	bin	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:49:10-05	\N
daemon	daemon	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:49:23-05	\N
adm	adm	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:49:41-05	\N
lp	lp	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:50:02-05	\N
operator	operator	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:51:56-05	\N
games	games	\N	\N	\N	application	/sbin/nologin	2001-09-03 13:52:08-05	\N
ftp	FTP User	\N	\N	\N	application	/sbin/nologin	2001-09-03 13:52:34-05	\N
nobody	Kernel Overflow User	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:52:48-05	\N
mail	mail	\N	\N	\N	system	/sbin/nologin	2001-09-03 13:51:18-05	\N
vcsa	virtual console memory owner	\N	\N	\N	system	/sbin/nologin	2002-12-10 01:49:26.483663-06	\N
emailmon	Email Monitoring Account	\N	\N	\N	application	/bin/false	2004-06-27 17:29:02.960684-05	\N
ftpmon	FTP Monitoring Account	\N	\N	\N	application	/usr/bin/ftponly	2004-06-27 17:30:26.011751-05	\N
news	news	\N	\N	\N	application	/sbin/nologin	2004-12-16 21:55:24.729454-06	\N
uucp	uucp	\N	\N	\N	application	/sbin/nologin	2004-12-16 22:02:04.466034-06	\N
sshd	system user for openssh	\N	\N	\N	application	/usr/sbin/nologin	2004-12-16 22:05:22.249823-06	\N
smmsp	system user for sendmail	\N	\N	\N	application	/sbin/nologin	2004-12-16 22:06:40.369597-06	\N
root	root	\N	\N	\N	system	/bin/bash	2001-09-03 13:48:37-05	\N
sync	sync	\N	\N	\N	system	/bin/sync	2001-09-03 13:50:22-05	\N
shutdown	shutdown	\N	\N	\N	system	/sbin/shutdown	2001-09-03 13:50:40-05	\N
halt	halt	\N	\N	\N	system	/sbin/halt	2001-09-03 13:50:55-05	\N
rpc	Rpcbind Daemon	\N	\N	\N	system	/bin/false	2001-09-03 13:53:37-05	\N
aoadmin	AO Industries Admin	\N	\N	\N	user	/bin/bash	2001-09-03 13:55:58-05	\N
nscd	NSCD Daemon	\N	\N	\N	system	/bin/false	2001-09-03 13:57:34-05	\N
ident	pident user	\N	\N	\N	system	/bin/false	2001-09-03 13:58:30-05	\N
pvm	pvm	\N	\N	\N	system	/bin/bash	2001-09-03 13:58:44-05	\N
rpm	rpm				system	/bin/bash	2002-01-21 03:44:25-06	\N
ntp	ntp				system	/sbin/nologin	2002-01-21 04:36:38-06	\N
mysql	MySQL Server	\N	\N	\N	application	/bin/bash	2001-09-03 13:55:40-05	\N
named	Named	\N	\N	\N	application	/bin/false	2001-09-03 13:57:03-05	\N
postgres	PostgreSQL Server	\N	\N	\N	application	/bin/bash	2001-09-03 13:58:11-05	\N
xfs	X Font Server	\N	\N	\N	application	/bin/false	2001-09-03 13:55:22-05	\N
mailnull	mailnull	\N	\N	\N	application	/sbin/nologin	2001-09-03 13:53:14-05	\N
interbase	InterBase Server	\N	\N	\N	application	/bin/bash	2001-09-04 00:58:35-05	\N
apache	Apache	\N	\N	\N	application	/sbin/nologin	2006-06-19 04:11:54.116605	\N
awstats	AWStats Background Log Processing	\N	\N	\N	application	/bin/false	2005-12-03 08:30:20.130052-06	\N
avahi	Avahi daemon	\N	\N	\N	system	/sbin/nologin	2008-01-04 14:08:55.930677	\N
avahi-autoipd	Avahi IPv4LL Stack	\N	\N	\N	system	/sbin/nologin	2017-04-06 17:43:45.743445+00	\N
cyrus	Cyrus IMAP Server	\N	\N	\N	application	/bin/bash	2006-11-30 16:32:59.466179	\N
gopher	gopher	\N	\N	\N	application	/sbin/nologin	2006-06-19 03:54:35.67468	\N
dbus	System message bus	\N	\N	\N	application	/sbin/nologin	2006-06-19 03:56:39.344773	\N
haldaemon	HAL daemon	\N	\N	\N	application	/sbin/nologin	2006-06-19 03:59:38.195281	\N
pcap	pcap	\N	\N	\N	system	/sbin/nologin	2006-06-19 04:10:35.710186	\N
distcache	Distcache	\N	\N	\N	system	/sbin/nologin	2008-01-04 14:15:52.337433	\N
nfsnobody	Anonymous NFS User	\N	\N	\N	system	/sbin/nologin	2008-01-04 14:19:36.415161	\N
rpcuser	RPC Service User	\N	\N	\N	system	/sbin/nologin	2008-01-04 14:23:56.786483	\N
nginx	nginx user	\N	\N	\N	application	/sbin/nologin	2013-04-19 13:13:53.314883-05	\N
memcached	memcached user	\N	\N	\N	application	/sbin/nologin	2013-05-01 16:16:53.126302-05	\N
systemd-bus-proxy	systemd Bus Proxy	\N	\N	\N	system	/sbin/nologin	2017-04-06 17:45:33.326501+00	\N
tcpdump	\N	\N	\N	\N	system	/sbin/nologin	2017-04-06 17:59:21.153614+00	\N
chrony	chrony system user	\N	\N	\N	system	/sbin/nologin	2017-04-06 18:14:57.342109+00	\N
aoserv-jilter	AOServ Jilter	\N	\N	\N	system	/sbin/nologin	2017-05-08 18:18:27.495141+00	\N
aoserv-xen-migration	AOServ Xen Migration	\N	\N	\N	system	/bin/bash	2018-03-26 05:22:56.964296+00	\N
mockbuild	RPM Build Environment	\N	\N	\N	user	/bin/bash	2018-04-09 02:42:42.401376+00	\N
bird	BIRD Internet Routing Daemon	\N	\N	\N	system	/sbin/nologin	2012-05-31 09:00:59.350862+00	\N
clamupdate	Clamav database update user	\N	\N	\N	system	/sbin/nologin	2018-07-11 04:07:22.467792+00	\N
clamscan	Clamav scanner user	\N	\N	\N	system	/sbin/nologin	2018-07-11 04:07:53.611256+00	\N
redis	Redis Database Server	\N	\N	\N	system	/sbin/nologin	2019-08-22 21:12:50.65977+00	\N
\.

BEGIN;

INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('tss',            'Account used for TPM access', 'system', '/usr/sbin/nologin', '2017-02-15 00:31:36.836216+00');
-- AOServ Master
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('aoserv-master',  'AOServ Master',             'system', '/sbin/nologin', '2020-04-14 18:47:06.273709+00');
-- AOServ Schema
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('accounting',     'masterdb access',           'user',   '/bin/bash',     '2018-11-26 21:46:59.798036+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('billing',        'masterdb access',           'user',   '/bin/bash',     '2018-11-26 22:08:02.058685+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('distribution',   'masterdb access',           'user',   '/bin/bash',     '2018-11-26 21:46:50.190308+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('infrastructure', 'masterdb access',           'user',   '/bin/bash',     '2018-11-27 07:08:00.994582+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('management',     'masterdb access',           'user',   '/bin/bash',     '2018-11-26 21:47:08.617974+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('monitoring',     'masterdb access',           'user',   '/bin/bash',     '2018-11-27 15:40:40.322250+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('reseller',       'masterdb access',           'user',   '/bin/bash',     '2018-11-27 04:46:20.963659+00');
-- Amazon EC2 cloud-init
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('rocky',          'rocky Cloud User',          'user',   '/bin/bash',     '2025-01-17 11:37:31.981203+00');
-- Jenkins
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('jenkins',        'Jenkins Automation Server', 'system', '/bin/bash',     '2014-06-05 19:50:06.502619+00');
-- OProfile
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('oprofile',       'Special user account to be used by OProfile', 'system', '/sbin/nologin', '2022-05-19 22:41:58.112112+00');
-- SonarQube
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('sonarqube',      'SonarQube',                 'user',   '/bin/bash',     '2022-02-14 18:30:42.703695+00');
-- Rocky 9
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('flatpak',          'User for flatpak system helper', 'system', '/sbin/nologin',     '2024-09-25 01:39:45.93339+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('geoclue',          'User for geoclue',               'system', '/sbin/nologin',     '2024-09-25 01:39:45.93339+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('pipewire',         'PipeWire System Daemon',         'system', '/usr/sbin/nologin', '2024-09-25 01:39:45.93339+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('rtkit',            'RealtimeKit',                    'system', '/sbin/nologin',     '2024-09-25 01:39:45.93339+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('sssd',             'User for sssd',                  'system', '/sbin/nologin',     '2024-09-25 01:39:45.93339+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('systemd-coredump', 'systemd Core Dumper',            'system', '/sbin/nologin',     '2024-09-25 01:39:45.93339+00');
INSERT INTO linux."User" (username, "name", "type", shell, created) VALUES ('systemd-oom',      'systemd Userspace OOM Killer',   'system', '/usr/sbin/nologin', '2024-09-25 01:39:45.93339+00');

COMMIT;
