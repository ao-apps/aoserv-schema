begin;
insert into resources values(
    1,
    'mysql_server',
    'AOINDUSTRIES',
    '2009-12-18 05:58:01.710836-06',
    'orion',
    null,
    '2009-12-18 05:58:01.710836-06'
);
insert into resources values(
    2,
    'mysql_server',
    'AOINDUSTRIES',
    '2009-12-18 05:58:07.630257-06',
    'orion',
    null,
    '2009-12-18 05:58:07.630257-06'
);
insert into resources values(
    3,
    'mysql_user',
    'AOINDUSTRIES',
    '2009-12-30 11:12:17.375146-06',
    'orion',
    null,
    '2009-12-30 11:12:17.375146-06'
);
insert into resources values(
    4,
    'mysql_user',
    'AOINDUSTRIES',
    '2009-12-30 11:12:17.375146-06',
    'orion',
    null,
    '2009-12-30 11:12:17.375146-06'
);
insert into resources values(
    5,
    'mysql_user',
    'NMW',
    '2009-12-30 11:12:17.375146-06',
    'orion',
    null,
    '2009-12-30 11:12:17.375146-06'
);
insert into resources values(
    6,
    'mysql_database',
    'AOINDUSTRIES',
    '2009-12-30 16:04:26.766888-06',
    'orion',
    null,
    '2009-12-30 16:04:26.766888-06'
);
insert into resources values(
    7,
    'mysql_database',
    'AOINDUSTRIES',
    '2009-12-30 16:04:26.766888-06',
    'orion',
    null,
    '2009-12-30 16:04:26.766888-06'
);
insert into resources values(
    8,
    'mysql_database',
    'AOINDUSTRIES',
    '2009-12-30 16:04:26.766888-06',
    'orion',
    null,
    '2009-12-30 16:04:26.766888-06'
);
insert into resources values(
    9,
    'mysql_database',
    'NMW',
    '2009-12-30 16:04:26.766888-06',
    'orion',
    null,
    '2009-12-30 16:04:26.766888-06'
);
commit;
SELECT setval ('"resources_pkey_seq"', 10, true);
