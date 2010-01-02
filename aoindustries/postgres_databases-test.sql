-- 8.1
insert into
    postgres_databases
values(
    9,
    'template0',
    10,
    11,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='LATIN1'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    true,
    false,
    false
);
insert into
    postgres_databases
values(
    10,
    'template1',
    10,
    11,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='LATIN1'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    true,
    true,
    false
);
insert into
    postgres_databases
values(
    11,
    'aoindustries',
    10,
    12,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgres_databases
values(
    13,
    'aoweb',
    10,
    12,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='UTF8'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgres_databases
values(
    14,
    'aoserv',
    10,
    11,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgres_databases
values(
    17,
    'edrugstore',
    10,
    16,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='UTF8'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgres_databases
values(
    18,
    'edrugstore_sessions',
    10,
    16,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
insert into
    postgres_databases
values(
    16,
    'danshome',
    10,
    22,
    (
        select
            pkey
        from
            postgres_encodings
        where
            encoding='SQL_ASCII'
            and postgres_version=(
                select
                    pkey
                from
                    technology_versions
                where
                    name='postgresql'
                    and version like '8.1.%'
                    and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
            )
    ),
    false,
    true,
    false
);
SELECT setval ('"postgres_databases_pkey_seq"', 17, true);
