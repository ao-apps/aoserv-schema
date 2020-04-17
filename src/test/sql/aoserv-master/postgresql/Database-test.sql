/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2008, 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

-- 8.1
insert into
    postgresql."Database"
values(
    9,
    'template0',
    1,
    16,
    (
        select
            id
        from
            postgresql."Encoding"
        where
            encoding='LATIN1'
            and postgres_version=(
                select
                    id
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    true,
    false,
    false
);
insert into
    postgresql."Database"
values(
    10,
    'template1',
    1,
    16,
    (
        select
            id
        from
            postgresql."Encoding"
        where
            encoding='LATIN1'
            and postgres_version=(
                select
                    id
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    true,
    true,
    false
);
insert into
    postgresql."Database"
values(
    11,
    'aoserv-master',
    1,
    17,
    (
        select
            id
        from
            postgresql."Encoding"
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    id
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgresql."Database"
values(
    13,
    'aoweb',
    1,
    17,
    (
        select
            id
        from
            postgresql."Encoding"
        where
            encoding='UTF8'
            and postgres_version=(
                select
                    id
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgresql."Database"
values(
    14,
    'aoserv',
    1,
    16,
    (
        select
            id
        from
            postgresql."Encoding"
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    id
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select id from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
SELECT setval ('postgresql."Database_id_seq"', 17, true);
