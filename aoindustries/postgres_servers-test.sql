insert into postgres_servers values(
    10,
    'postgresql_server',
    'AOINDUSTRIES',
    2,
    '8.1',
    (
        select
            pkey
        from
            technology_versions
        where
            name='postgresql'
            and version like '8.1.%'
            and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
    ),
    128,
    15,
    16384,
    24576,
    true
);
