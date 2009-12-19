begin;
insert into mysql_servers values(
    1,
    'mysql_server',
   'AOINDUSTRIES',
    2,
    '4.1',
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
            and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
    ),
    1000,
    1
);
insert into mysql_servers values(
    2,
    'mysql_server',
   'AOINDUSTRIES',
    2,
    '5.0',
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
            and operating_system_version=(select pkey from operating_system_versions where operating_system='centos' and version_number='5')
    ),
    1000,
    2
);
commit;
