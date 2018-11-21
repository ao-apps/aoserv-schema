begin;
insert into packages values(
    2,
	'TEST',
	'TEST',
	1,
	'2004-11-28 19:14:02.812879-06',
	'orion',
	null,
	null,
	null,
	null,
	null,
	null,
	null
);
insert into packages values(
    4,
	'NMW',
	'NMW',
	1,
	'2006-03-21 13:11:00-06',
	'orion',
	null,
	null,
	null,
	null,
	null,
	null,
	null
);
SELECT setval ('billing.packages_pkey_seq', 5, true);
commit;
