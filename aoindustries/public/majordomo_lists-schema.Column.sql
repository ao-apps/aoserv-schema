select "schema".add_column('majordomo_lists', 'email_list', 0, 'fkey', false, true, false, 'the email list that this majordomo_list represents', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'majordomo_server', 1, 'fkey', false, false, false, 'the majordomo_server that this list is part of', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'name', 2, 'string', false, false, false, 'the list name', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_pipe_add', 3, 'fkey', false, true, false, 'the pipe address the list responds to.  Example: test@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_list_add', 4, 'fkey', false, true, false, 'the list address that accesses the raw list contents.  Example: test-list@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'owner_listname_add', 5, 'fkey', false, true, false, 'the owner of the list.  Example: owner-test@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_owner_add', 6, 'fkey', false, true, false, 'the owner of the list.  Example: test-owner@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_approval_add', 7, 'fkey', false, true, false, 'the person who retrieves approval notifications.  Example: test-approval@aoindustries.com', '1.0a100', null);
select "schema".add_column('majordomo_lists', 'listname_request_pipe_add', 8, 'fkey', false, true, false, 'the address that Majordomo requests may be sent to.  Example: test-request@aoindustries.com', '1.0a100', null);
