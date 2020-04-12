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
