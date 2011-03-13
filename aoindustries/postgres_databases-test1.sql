begin;
-- 8.1
insert into
    postgres_databases
values(
    26,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    27,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    28,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    29,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    30,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    31,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    32,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
    33,
    'postgresql_database',
    'AOINDUSTRIES',
    135,
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
commit;
