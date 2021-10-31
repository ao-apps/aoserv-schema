/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2013, 2017, 2018, 2019, 2020  AO Industries, Inc.
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

COPY net."AppProtocol" FROM stdin;
submission	587	Mail Message Submission	t	TCP
NTP	123	Network Time Protocol	f	UDP
SMTP	25	Simple Mail Transport Protocol	t	TCP
ldap	389	LDAP	f	TCP
HTTP	80	Hypertext Transfer Protocol	f	TCP
auth	113	Identity service	f	TCP
HTTPS	443	Secure Hypertext Transfer Protocol	f	TCP
shell	514	Remote Shell	f	TCP
MySQL	3306	MySQL	f	TCP
PostgreSQL	5432	PostgreSQL	f	TCP
Xvfb	6000	X Virtual Frame Buffer	f	TCP
ajp12	8007	Apache JServ Protocol Version 1.2	f	TCP
ajp13	8009	Apache JServ Protocol Version 1.3	f	TCP
RMI	4444	Java RMI	f	TCP
JMX	8082	JBoss JMX	f	TCP
hypersonic	1476	HypersonicSQL	f	TCP
webserver	8083	JBoss Web Server	f	TCP
JNP	1099	Java JNP	f	TCP
tomcat4-shutdown	8005	Jakarta Tomcat 4 Shutdown Port	f	TCP
user	65535	User port	f	TCP
ozone-admin	3000	Ozone Administration	f	TCP
ozone	3333	Ozone	f	TCP
bootpc	68	BOOTP Client	f	UDP
bootps	67	BOOTP Server	f	UDP
irc	6565	IRC	f	TCP
aoserv-daemon-ssl	984	AO Serv Daemon (SSL)	f	TCP
rquotad	805	rpc.rquotad	f	TCP
unknown	1024	Unknown	f	TCP
aoserv-master-ssl	4583	AO Serv Master (SSL)	f	TCP
aoserv-daemon	985	AO Serv Daemon	f	TCP
aoserv-master	4582	AO Serv Master	f	TCP
FTP	21	File Transfer Protocol	t	TCP
SSH	22	Secure Shell	t	TCP
Telnet	23	Telnet	t	TCP
POP3	110	Post Office Protocol Version 3	t	TCP
IMAP2	143	IMAP Version 2	t	TCP
SIMAP	993	Secure IMAP	t	TCP
SPOP3	995	Secure Post Office Protocol Version 3	t	TCP
cvspserver	2401	CVS pserver	t	TCP
FTP-DATA	20	File Transfer Protocol Data	t	TCP
DNS	53	Domain Name Service	f	UDP
sunrpc	111	Sun Remote Procedure Call	f	UDP
nfs	2049	NFS	f	UDP
netbios-dgm	138	NetBIOS DGM	f	UDP
netbios-ns	137	NetBIOS NS	f	UDP
netbios-ssn	139	NetBIOS SSN	f	UDP
rndc	953	rndc control sockets (BIND 9)	f	TCP
talk	517	talk	f	UDP
ntalk	518	ntalk	f	UDP
milter	12000	Sendmail Milter	f	TCP
sieve	4190	timsieved	f	TCP
RFB	5900	RFB used by VNC	f	TCP
\.
insert into net."AppProtocol" values ('SMTPS', 465, 'SMTP SSL', false, 'TCP');
insert into net."AppProtocol" values ('spamd', 783, 'SpamAssassin Daemon', false, 'TCP');
-- TODO: memcached also listens on UDP, how to represent in net.AppProtocol table?
insert into net."AppProtocol" values ('memcached', 11211, 'Memcached', false, 'TCP');
insert into net."AppProtocol" values ('csync2', 30865, 'Csync2 Daemon', false, 'TCP');
insert into net."AppProtocol" values ('elasticsearch', 9200, 'Elasticsearch', false, 'TCP');
-- See https://redis.io/topics/cluster-tutorial#redis-cluster-tcp-ports
insert into net."AppProtocol" values ('redis', 6379, 'Redis', false, 'TCP');
insert into net."AppProtocol" values ('redis-cluster', 16379, 'Redis Cluster', false, 'TCP');
insert into net."AppProtocol" values ('redis-sentinel', 26379, 'Redis Sentinel', false, 'TCP');
