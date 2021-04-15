/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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

begin;
-- centos
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(64, 'centos', '5.dom0', '5', 'i686', 'CentOS 5 (i686) (Xen Domain-0)', true, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(63, 'centos', '5.dom0', '5', 'x86_64', 'CentOS 5 (x86_64) (Xen Domain-0)', true, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(67, 'centos', '5', '5', 'i686,x86_64', 'CentOS 5 (i686 and x86_64) (Xen Guest and Standalone)', true, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(69, 'centos', '7.dom0', '7.dom0', 'x86_64', 'CentOS 7 (x86_64) (Xen Domain-0)', true, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(70, 'centos', '7', '7', 'x86_64', 'CentOS 7 (x86_64) (Xen Guest and Standalone)', true, (select count(*)+1 from distribution."OperatingSystemVersion"));
-- debian
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(1, 'debian', '3.0r1', 'Woody', 'i386', 'Debian 3.0r1 (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(68, 'debian', '5', 'Lenny', 'x86_64', 'Debian 5 (x86_64)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
-- windows
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(33, 'windows', '3.0', '3.0', 'i286', 'Windows 3.0 (i286)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(34, 'windows', '3.1', '3.1', 'i286', 'Windows 3.1 (i286)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(35, 'windows', '3.11', '3.11', 'i386', 'Windows 3.11 for Workgroups (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(36, 'windows', '4.0', '95', 'i386', 'Windows 95 (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(37, 'windows', '4.10', '98', 'i386', 'Windows 98 (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(38, 'windows', '4.90', '98 SE', 'i386', 'Windows 98 SE (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(39, 'windows', 'NT 4.0', 'NT 4.0', 'i386', 'Windows NT 4.0 (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(40, 'windows', 'NT 5.0', '2000', 'i386', 'Windows 2000 (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(41, 'windows', 'NT 5.1', 'XP', 'i386', 'Windows XP (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
insert into distribution."OperatingSystemVersion" (id, operating_system, version_number, version_name, architecture, display, is_aoserv_daemon_supported, sort_order) values(42, 'windows', '2003 Server', '2003 Server', 'i386', 'Windows 2003 Server (i386)', false, (select count(*)+1 from distribution."OperatingSystemVersion"));
commit;
