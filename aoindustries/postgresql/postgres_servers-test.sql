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
            and operating_system_version=(select pkey from distribution."OperatingSystemVersion" where operating_system='centos' and version_number='5')
    ),
    128,
    15,
    16384,
    24576,
    true
);
