/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2011, 2013, 2018, 2020  AO Industries, Inc.
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

insert into mysql."Server" values(
    1,
    '4.1',
    2,
    (
        select
            id
        from
            distribution."SoftwareVersion"
        where
            name='MySQL'
            and version like '4.1.%'
            and version not like '4.1.%-max'
            and version not like '4.1.%-source'
            and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
    ),
    1000
);
insert into mysql."Server" values(
    2,
    '5.0',
    2,
    (
        select
            id
        from
            distribution."SoftwareVersion"
        where
            name='MySQL'
            and version like '5.0.%'
            and version not like '5.0.%-max'
            and version not like '5.0.%-source'
            and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
    ),
    1000
);
