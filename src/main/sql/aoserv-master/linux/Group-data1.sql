/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2011, 2013, 2017, 2018, 2019, 2020, 2021, 2022, 2024, 2025  AO Industries, Inc.
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

COPY linux."Group" FROM stdin;
news	AOINDUSTRIES	system
root	AOINDUSTRIES	system
bin	AOINDUSTRIES	system
daemon	AOINDUSTRIES	system
sys	AOINDUSTRIES	system
adm	AOINDUSTRIES	system
tty	AOINDUSTRIES	system
disk	AOINDUSTRIES	system
lp	AOINDUSTRIES	system
mem	AOINDUSTRIES	system
kmem	AOINDUSTRIES	system
wheel	AOINDUSTRIES	system
mailonly	AOINDUSTRIES	system
uucp	AOINDUSTRIES	system
man	AOINDUSTRIES	system
floppy	AOINDUSTRIES	system
games	AOINDUSTRIES	system
slocate	AOINDUSTRIES	system
utmp	AOINDUSTRIES	system
pvm	AOINDUSTRIES	system
named	AOINDUSTRIES	system
postgres	AOINDUSTRIES	system
interbase	AOINDUSTRIES	system
nscd	AOINDUSTRIES	system
rpc	AOINDUSTRIES	system
xfs	AOINDUSTRIES	system
mailnull	AOINDUSTRIES	system
ftp	AOINDUSTRIES	system
apache	AOINDUSTRIES	system
xvfb	AOINDUSTRIES	system
nobody	AOINDUSTRIES	system
users	AOINDUSTRIES	system
console	AOINDUSTRIES	system
pppusers	AOINDUSTRIES	system
popusers	AOINDUSTRIES	system
slipusers	AOINDUSTRIES	system
mysql	AOINDUSTRIES	system
sshd	AOINDUSTRIES	system
ftponly	AOINDUSTRIES	ftponly
aoadmin	AOINDUSTRIES	user
lock	AOINDUSTRIES	system
rpm	AOINDUSTRIES	system
ident	AOINDUSTRIES	system
ntp	AOINDUSTRIES	system
ftpmon	AOINDUSTRIES	ftponly
smmsp	AOINDUSTRIES	system
mail	AOINDUSTRIES	system
vcsa	AOINDUSTRIES	system
portmon	AOINDUSTRIES	system
replicator	AOINDUSTRIES	system
tcpdump	AOINDUSTRIES	system
awstats	AOINDUSTRIES	system
dip	AOINDUSTRIES	system
gopher	AOINDUSTRIES	system
haldaemon	AOINDUSTRIES	system
pcap	AOINDUSTRIES	system
dbus	AOINDUSTRIES	system
screen	AOINDUSTRIES	system
avahi	AOINDUSTRIES	system
saslauth	AOINDUSTRIES	system
distcache	AOINDUSTRIES	system
nfsnobody	AOINDUSTRIES	system
rpcuser	AOINDUSTRIES	system
utempter	AOINDUSTRIES	system
nginx	AOINDUSTRIES	system
memcached	AOINDUSTRIES	system
cdrom	AOINDUSTRIES	system
dialout	AOINDUSTRIES	system
tape	AOINDUSTRIES	system
video	AOINDUSTRIES	system
audio	AOINDUSTRIES	system
avahi-autoipd	AOINDUSTRIES	system
systemd-bus-proxy	AOINDUSTRIES	system
tcpdump	AOINDUSTRIES	system
chrony	AOINDUSTRIES	system
cgred	AOINDUSTRIES	system
aoserv-jilter	AOINDUSTRIES	system
aoserv-xen-migration	AOINDUSTRIES	system
mockbuild	AOINDUSTRIES	user
bird	AOINDUSTRIES	system
clamupdate	AOINDUSTRIES	system
virusgroup	AOINDUSTRIES	system
clamscan	AOINDUSTRIES	system
redis	AOINDUSTRIES	system
\.

BEGIN;
-- AOServ Master
INSERT INTO linux."Group" ("name", package, "type") VALUES ('aoserv-master',  'AOINDUSTRIES', 'system');
-- AOServ Schema
INSERT INTO linux."Group" ("name", package, "type") VALUES ('accounting',     'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('billing',        'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('distribution',   'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('infrastructure', 'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('management',     'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('monitoring',     'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('reseller',       'AOINDUSTRIES', 'user');
-- Amazon EC2 cloud-init
INSERT INTO linux."Group" ("name", package, "type") VALUES ('centos',         'AOINDUSTRIES', 'user');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('rocky',          'AOINDUSTRIES', 'user');
-- Jenkins
INSERT INTO linux."Group" ("name", package, "type") VALUES ('jenkins',        'AOINDUSTRIES', 'system');
-- OProfile
INSERT INTO linux."Group" ("name", package, "type") VALUES ('oprofile',       'AOINDUSTRIES', 'system');
-- SonarQube
INSERT INTO linux."Group" ("name", package, "type") VALUES ('sonarqube',      'AOINDUSTRIES', 'user');
-- SystemTap
INSERT INTO linux."Group" ("name", package, "type") VALUES ('stapusr',        'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('stapsys',        'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('stapdev',        'AOINDUSTRIES', 'system');
-- Rocky 9
INSERT INTO linux."Group" ("name", package, "type") VALUES ('flatpak',        'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('geoclue',        'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('kvm',            'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('pipewire',       'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('render',         'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('rtkit',          'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('sgx',            'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('sssd',           'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('systemd-coredump', 'AOINDUSTRIES', 'system');
INSERT INTO linux."Group" ("name", package, "type") VALUES ('systemd-oom',    'AOINDUSTRIES', 'system');
COMMIT;
