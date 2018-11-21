insert into "IPAddress" values (
	1,
	'0.0.0.0',
	null,
	false,
	null,
	(select pkey from packages where name='AOINDUSTRIES'),
	'2001-08-23 18:51:03-05',
	false,
	false,
	false,
	null,
	'0.0.0.0'
);

SELECT setval ('net."IPAddress_id_seq"', 1353, true);
