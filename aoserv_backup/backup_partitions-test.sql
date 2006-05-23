COPY backup_partitions (pkey, ao_server, device, path, minimum_free_space, desired_free_space, enabled, fill_order) FROM stdin;
3	2	/dev/md2	/.backup	1073741824	2147483648	t	3
1	3	/dev/hda4	/var/backup	536870912	536870912	t	1
4	3	/dev/md2	/.backup	1073741824	2147483648	t	2
\.
