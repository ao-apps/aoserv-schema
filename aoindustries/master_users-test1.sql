COPY master_users (username, is_active, can_access_accounting, can_access_bank_account, can_invalidate_tables, can_access_admin_web, is_dns_admin) FROM stdin;
orion	t	t	t	t	t	t
aoweb_app	t	t	f	f	t	f
test_svr	t	f	f	f	f	f
root	t	f	f	f	f	f
\.
