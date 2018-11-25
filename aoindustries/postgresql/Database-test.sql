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
            pkey
        from
            postgresql."Encoding"
        where
            encoding='LATIN1'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
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
            pkey
        from
            postgresql."Encoding"
        where
            encoding='LATIN1'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
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
    'aoindustries',
    1,
    17,
    (
        select
            pkey
        from
            postgresql."Encoding"
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
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
            pkey
        from
            postgresql."Encoding"
        where
            encoding='UTF8'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
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
            pkey
        from
            postgresql."Encoding"
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgresql."Database"
values(
    17,
    'edrugstore',
    1,
    27,
    (
        select
            pkey
        from
            postgresql."Encoding"
        where
            encoding='UTF8'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgresql."Database"
values(
    18,
    'edrugstore_sessions',
    1,
    27,
    (
        select
            pkey
        from
            postgresql."Encoding"
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgresql."Database"
values(
    16,
    'danshome',
    1,
    24,
    (
        select
            pkey
        from
            postgresql."Encoding"
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    distribution."SoftwareVersion"
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
SELECT setval ('postgresql."Database_pkey_seq"', 17, true);
