/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
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
insert into distribution."OperatingSystem" values('centos', 'CentOS Linux', true);
insert into distribution."OperatingSystem" values('debian', 'Debian Linux', true);
insert into distribution."OperatingSystem" values('fedora', 'Fedora Linux', true);
insert into distribution."OperatingSystem" values('gentoo', 'Gentoo Linux', true);
insert into distribution."OperatingSystem" values('mandrake', 'Mandrake Linux', true);
insert into distribution."OperatingSystem" values('mandriva', 'Mandriva Linux', true);
insert into distribution."OperatingSystem" values('redhat', 'RedHat Linux', true);
insert into distribution."OperatingSystem" values('windows', 'Windows', false);
commit;
