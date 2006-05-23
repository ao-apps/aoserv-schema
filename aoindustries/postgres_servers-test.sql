insert into postgres_servers values(
    2,
    '7.2',
    2,
    (
        select
            pkey
        from
            technology_versions
        where
            name='postgresql'
            and version like '7.2.%'
            and operating_system_version=(select pkey from operating_system_versions where operating_system='mandrake' and version_number='10.1')
    ),
    128,
    14,
    4096,
    24576,
    true
);
insert into postgres_servers values(
    1,
    '8.1',
    2,
    (
        select
            pkey
        from
            technology_versions
        where
            name='postgresql'
            and version like '8.1.%'
            and operating_system_version=(select pkey from operating_system_versions where operating_system='mandrake' and version_number='10.1')
    ),
    128,
    15,
    16384,
    24576,
    true
);
