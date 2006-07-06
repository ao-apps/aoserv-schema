insert into mysql_servers values(
    1,
    '4.1',
    2,
    (
        select
            pkey
        from
            technology_versions
        where
            name='MySQL'
            and version like '4.1.%'
            and version not like '4.1.%-max'
            and version not like '4.1.%-source'
            and operating_system_version=(select pkey from operating_system_versions where operating_system='mandrake' and version_number='10.1')
    ),
    1000,
    1
);
insert into mysql_servers values(
    2,
    '5.0',
    2,
    (
        select
            pkey
        from
            technology_versions
        where
            name='MySQL'
            and version like '5.0.%'
            and version not like '5.0.%-max'
            and version not like '5.0.%-source'
            and operating_system_version=(select pkey from operating_system_versions where operating_system='mandrake' and version_number='10.1')
    ),
    1000,
    2
);
