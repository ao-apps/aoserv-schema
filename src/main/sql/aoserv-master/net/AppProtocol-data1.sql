/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2013, 2017, 2018, 2019, 2020, 2026  AO Industries, Inc.
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

/*
 * Important! When adding new rows with "isUniquePerHost" = true, or changing existing row from
 * "isUniquePerHost" = false to "isUniquePerHost" = true, perform the following steps:
 * 1) DROP INDEX "Bind_isUniquePerHost_uni"
 * 2) Insert/update net."AppProtocol as-needed
 * 3) Recreate the "Bind_isUniquePerHost_uni" index in the "Bind-index.sql" file
 */
begin;
insert into net."AppProtocol" values ('submission', 587, 'Mail Message Submission', true, 'TCP', false);
insert into net."AppProtocol" values ('NTP', 123, 'Network Time Protocol', false, 'UDP', true);
insert into net."AppProtocol" values ('SMTP', 25, 'Simple Mail Transport Protocol', true, 'TCP', false);
insert into net."AppProtocol" values ('ldap', 389, 'LDAP', false, 'TCP', true);
insert into net."AppProtocol" values ('HTTP', 80, 'Hypertext Transfer Protocol', false, 'TCP', false);
insert into net."AppProtocol" values ('auth', 113, 'Identity service', false, 'TCP', true);
insert into net."AppProtocol" values ('HTTPS', 443, 'Secure Hypertext Transfer Protocol', false, 'TCP', false);
insert into net."AppProtocol" values ('shell', 514, 'Remote Shell', false, 'TCP', true);
insert into net."AppProtocol" values ('MySQL', 3306, 'MySQL', false, 'TCP', false);
insert into net."AppProtocol" values ('PostgreSQL', 5432, 'PostgreSQL', false, 'TCP', false);
insert into net."AppProtocol" values ('Xvfb', 6000, 'X Virtual Frame Buffer', false, 'TCP', true);
insert into net."AppProtocol" values ('user', 65535, 'User port', false, 'TCP', false);
insert into net."AppProtocol" values ('ozone-admin', 3000, 'Ozone Administration', false, 'TCP', true);
insert into net."AppProtocol" values ('ozone', 3333, 'Ozone', false, 'TCP', true);
insert into net."AppProtocol" values ('bootpc', 68, 'BOOTP Client', false, 'UDP', true);
insert into net."AppProtocol" values ('bootps', 67, 'BOOTP Server', false, 'UDP', true);
insert into net."AppProtocol" values ('irc', 6565, 'IRC', false, 'TCP', false);
insert into net."AppProtocol" values ('aoserv-daemon-ssl', 984, 'AO Serv Daemon (SSL)', false, 'TCP', false);
insert into net."AppProtocol" values ('rquotad', 805, 'rpc.rquotad', false, 'TCP', true);
insert into net."AppProtocol" values ('unknown', 1024, 'Unknown', false, 'TCP', false);
insert into net."AppProtocol" values ('aoserv-master-ssl', 4583, 'AO Serv Master (SSL)', false, 'TCP', false);
insert into net."AppProtocol" values ('aoserv-daemon', 985, 'AO Serv Daemon', false, 'TCP', false);
insert into net."AppProtocol" values ('aoserv-master', 4582, 'AO Serv Master', false, 'TCP', false);
insert into net."AppProtocol" values ('FTP', 21, 'File Transfer Protocol', true, 'TCP', false);
insert into net."AppProtocol" values ('SSH', 22, 'Secure Shell', true, 'TCP', false);
insert into net."AppProtocol" values ('Telnet', 23, 'Telnet', true, 'TCP', false);
insert into net."AppProtocol" values ('POP3', 110, 'Post Office Protocol Version 3', true, 'TCP', false);
insert into net."AppProtocol" values ('IMAP2', 143, 'IMAP Version 2', true, 'TCP', false);
insert into net."AppProtocol" values ('SIMAP', 993, 'Secure IMAP', true, 'TCP', false);
insert into net."AppProtocol" values ('SPOP3', 995, 'Secure Post Office Protocol Version 3', true, 'TCP', false);
insert into net."AppProtocol" values ('cvspserver', 2401, 'CVS pserver', true, 'TCP', false);
insert into net."AppProtocol" values ('FTP-DATA', 20, 'File Transfer Protocol Data', true, 'TCP', false);
insert into net."AppProtocol" values ('DNS', 53, 'Domain Name Service', false, 'UDP', false);
insert into net."AppProtocol" values ('sunrpc', 111, 'Sun Remote Procedure Call', false, 'UDP', true);
insert into net."AppProtocol" values ('nfs', 2049, 'NFS', false, 'UDP', true);
insert into net."AppProtocol" values ('netbios-dgm', 138, 'NetBIOS DGM', false, 'UDP', true);
insert into net."AppProtocol" values ('netbios-ns', 137, 'NetBIOS NS', false, 'UDP', true);
insert into net."AppProtocol" values ('netbios-ssn', 139, 'NetBIOS SSN', false, 'UDP', true);
insert into net."AppProtocol" values ('rndc', 953, 'rndc control sockets (BIND 9)', false, 'TCP', true);
insert into net."AppProtocol" values ('talk', 517, 'talk', false, 'UDP', true);
insert into net."AppProtocol" values ('ntalk', 518, 'ntalk', false, 'UDP', true);
insert into net."AppProtocol" values ('milter', 12000, 'Sendmail Milter', false, 'TCP', true);
insert into net."AppProtocol" values ('opendkim', 8891, 'OpenDKIM Milter', false, 'TCP', true);
insert into net."AppProtocol" values ('sieve', 4190, 'timsieved', false, 'TCP', true);
insert into net."AppProtocol" values ('RFB', 5900, 'RFB used by VNC', false, 'TCP', false);
insert into net."AppProtocol" values ('SMTPS', 465, 'SMTP SSL', false, 'TCP', false);
insert into net."AppProtocol" values ('spamd', 783, 'SpamAssassin Daemon', false, 'TCP', true);
-- TODO: memcached also listens on UDP, how to represent in net.AppProtocol table?
insert into net."AppProtocol" values ('memcached', 11211, 'Memcached', false, 'TCP', false);
insert into net."AppProtocol" values ('csync2', 30865, 'Csync2 Daemon', false, 'TCP', false);
insert into net."AppProtocol" values ('elasticsearch', 9200, 'Elasticsearch', false, 'TCP', false);
-- Tomcat and JBoss
insert into net."AppProtocol" values ('ajp12', 8007, 'Apache JServ Protocol Version 1.2', false, 'TCP', false);
insert into net."AppProtocol" values ('ajp13', 8009, 'Apache JServ Protocol Version 1.3', false, 'TCP', false);
insert into net."AppProtocol" values ('RMI', 4444, 'Java RMI', false, 'TCP', false);
insert into net."AppProtocol" values ('JMX', 8082, 'JBoss JMX', false, 'TCP', false);
insert into net."AppProtocol" values ('hypersonic', 1476, 'HypersonicSQL', false, 'TCP', false);
insert into net."AppProtocol" values ('webserver', 8083, 'JBoss Web Server', false, 'TCP', false);
insert into net."AppProtocol" values ('JNP', 1099, 'Java JNP', false, 'TCP', false);
insert into net."AppProtocol" values ('tomcat4-shutdown', 8005, 'Jakarta Tomcat 4 Shutdown Port', false, 'TCP', false);
-- See https://redis.io/topics/cluster-tutorial#redis-cluster-tcp-ports
insert into net."AppProtocol" values ('redis', 6379, 'Redis', false, 'TCP', true);
insert into net."AppProtocol" values ('redis-cluster', 16379, 'Redis Cluster', false, 'TCP', true);
insert into net."AppProtocol" values ('redis-sentinel', 26379, 'Redis Sentinel', false, 'TCP', true);
commit;
