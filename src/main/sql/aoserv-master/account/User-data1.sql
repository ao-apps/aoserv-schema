/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2013, 2017, 2018, 2019, 2020  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

COPY account."User" (username, package, disable_log) FROM stdin;
adm	AOINDUSTRIES	\N
aoadmin	AOINDUSTRIES	\N
avahi	AOINDUSTRIES	\N
avahi-autoipd	AOINDUSTRIES	\N
awstats	AOINDUSTRIES	\N
bin	AOINDUSTRIES	\N
cyrus	AOINDUSTRIES	\N
root	AOINDUSTRIES	\N
daemon	AOINDUSTRIES	\N
lp	AOINDUSTRIES	\N
sync	AOINDUSTRIES	\N
shutdown	AOINDUSTRIES	\N
halt	AOINDUSTRIES	\N
mail	AOINDUSTRIES	\N
operator	AOINDUSTRIES	\N
games	AOINDUSTRIES	\N
ftp	AOINDUSTRIES	\N
nobody	AOINDUSTRIES	\N
mailnull	AOINDUSTRIES	\N
rpc	AOINDUSTRIES	\N
xfs	AOINDUSTRIES	\N
mysql	AOINDUSTRIES	\N
named	AOINDUSTRIES	\N
nscd	AOINDUSTRIES	\N
postgres	AOINDUSTRIES	\N
ident	AOINDUSTRIES	\N
pvm	AOINDUSTRIES	\N
interbase	AOINDUSTRIES	\N
apache	AOINDUSTRIES	\N
xvfb	AOINDUSTRIES	\N
rpm	AOINDUSTRIES	\N
ntp	AOINDUSTRIES	\N
sysdba	AOINDUSTRIES	\N
news	AOINDUSTRIES	\N
uucp	AOINDUSTRIES	\N
sshd	AOINDUSTRIES	\N
smmsp	AOINDUSTRIES	\N
vcsa	AOINDUSTRIES	\N
emailmon	AOINDUSTRIES	\N
ftpmon	AOINDUSTRIES	\N
gopher	AOINDUSTRIES	\N
dbus	AOINDUSTRIES	\N
haldaemon	AOINDUSTRIES	\N
pcap	AOINDUSTRIES	\N
distcache	AOINDUSTRIES	\N
nfsnobody	AOINDUSTRIES	\N
rpcuser	AOINDUSTRIES	\N
nginx	AOINDUSTRIES	\N
memcached	AOINDUSTRIES	\N
systemd-bus-proxy	AOINDUSTRIES	\N
tcpdump	AOINDUSTRIES	\N
chrony	AOINDUSTRIES	\N
aoserv-jilter	AOINDUSTRIES	\N
aoserv-xen-migration	AOINDUSTRIES	\N
mockbuild	AOINDUSTRIES	\N
bird	AOINDUSTRIES	\N
clamupdate	AOINDUSTRIES	\N
clamscan	AOINDUSTRIES	\N
redis	AOINDUSTRIES	\N
\.

-- AOServ Master
INSERT INTO account."User" (username, package, disable_log) VALUES ('aoserv-master',  'AOINDUSTRIES', NULL);
-- AOServ Schema
INSERT INTO account."User" (username, package, disable_log) VALUES ('accounting',     'AOINDUSTRIES', NULL);
INSERT INTO account."User" (username, package, disable_log) VALUES ('billing',        'AOINDUSTRIES', NULL);
INSERT INTO account."User" (username, package, disable_log) VALUES ('distribution',   'AOINDUSTRIES', NULL);
INSERT INTO account."User" (username, package, disable_log) VALUES ('infrastructure', 'AOINDUSTRIES', NULL);
INSERT INTO account."User" (username, package, disable_log) VALUES ('management',     'AOINDUSTRIES', NULL);
INSERT INTO account."User" (username, package, disable_log) VALUES ('monitoring',     'AOINDUSTRIES', NULL);
INSERT INTO account."User" (username, package, disable_log) VALUES ('reseller',       'AOINDUSTRIES', NULL);
-- Amazon EC2 cloud-init
INSERT INTO account."User" (username, package, disable_log) VALUES ('centos',         'AOINDUSTRIES', NULL);
