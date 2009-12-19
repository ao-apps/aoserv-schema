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
commit;
SELECT setval ('"resources_pkey_seq"', 3, true);
