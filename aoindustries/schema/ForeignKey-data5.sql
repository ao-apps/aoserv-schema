\echo technologies
select "schema".add_foreign_key('technologies', 'name', 'technology_names', 'name', '1.0a100', null);
select "schema".add_foreign_key('technologies', 'class', 'technology_classes', 'name', '1.0a100', null);

\echo technology_versions
select "schema".add_foreign_key('technology_versions', 'name', 'technology_names', 'name', '1.0a100', null);
select "schema".add_foreign_key('technology_versions', 'owner', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('technology_versions', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a108', null);

\echo ticket_actions
select "schema".add_foreign_key('ticket_actions', 'ticket', 'tickets', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'administrator', 'business_administrators', 'username', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'action_type', 'ticket_action_types', 'type', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'old_accounting', 'businesses', 'accounting', '1.44', '1.68');
select "schema".add_foreign_key('ticket_actions', 'old_accounting', 'businesses', 'accounting', '1.69', null);
select "schema".add_foreign_key('ticket_actions', 'new_accounting', 'businesses', 'accounting', '1.44', '1.68');
select "schema".add_foreign_key('ticket_actions', 'new_accounting', 'businesses', 'accounting', '1.69', null);
select "schema".add_foreign_key('ticket_actions', 'old_priority', 'ticket_priorities', 'priority', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'new_priority', 'ticket_priorities', 'priority', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'old_type', 'ticket_types', 'type', '1.49', null);
select "schema".add_foreign_key('ticket_actions', 'new_type', 'ticket_types', 'type', '1.49', null);
select "schema".add_foreign_key('ticket_actions', 'old_status', 'ticket_stati', 'status', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'new_status', 'ticket_stati', 'status', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'old_assigned_to', 'business_administrators', 'username', '1.44', '1.80');
select "schema".add_foreign_key('ticket_actions', 'old_assigned_to', 'business_administrators', 'username', '1.80.0', null);
select "schema".add_foreign_key('ticket_actions', 'new_assigned_to', 'business_administrators', 'username', '1.44', '1.80');
select "schema".add_foreign_key('ticket_actions', 'new_assigned_to', 'business_administrators', 'username', '1.80.0', null);
select "schema".add_foreign_key('ticket_actions', 'old_category', 'ticket_categories', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_actions', 'new_category', 'ticket_categories', 'pkey', '1.44', null);

\echo ticket_assignments
select "schema".add_foreign_key('ticket_assignments', 'ticket', 'tickets', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_assignments', 'reseller', 'resellers', 'accounting', '1.44', null);
select "schema".add_foreign_key('ticket_assignments', 'administrator', 'business_administrators', 'username', '1.44', null);

\echo ticket_brand_categories
select "schema".add_foreign_key('ticket_brand_categories', 'brand', 'brands', 'accounting', '1.44', null);
select "schema".add_foreign_key('ticket_brand_categories', 'category', 'ticket_categories', 'pkey', '1.44', null);

\echo ticket_categories
select "schema".add_foreign_key('ticket_categories', 'parent', 'ticket_categories', 'pkey', '1.44', null);

\echo tickets
select "schema".add_foreign_key('tickets', 'brand', 'brands', 'accounting', '1.46', null);
select "schema".add_foreign_key('tickets', 'reseller', 'resellers', 'accounting', '1.44', null);
select "schema".add_foreign_key('tickets', 'package', 'packages', 'name', '1.0a100', '1.0a125');
select "schema".add_foreign_key('tickets', 'accounting', 'businesses', 'accounting', '1.0a126', null);
select "schema".add_foreign_key('tickets', 'language', 'languages', 'code', '1.44', null);
select "schema".add_foreign_key('tickets', 'administrator', 'business_administrators', 'username', '1.0a100', '1.0a125');
select "schema".add_foreign_key('tickets', 'created_by', 'business_administrators', 'username', '1.0a126', null);
select "schema".add_foreign_key('tickets', 'category', 'ticket_categories', 'pkey', '1.44', null);
select "schema".add_foreign_key('tickets', 'ticket_type', 'ticket_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('tickets', 'closed_by', 'business_administrators', 'username', '1.0a100', '1.43');
select "schema".add_foreign_key('tickets', 'client_priority', 'ticket_priorities', 'priority', '1.0a100', null);
select "schema".add_foreign_key('tickets', 'admin_priority', 'ticket_priorities', 'priority', '1.0a100', '1.9');
select "schema".add_foreign_key('tickets', 'admin_priority', 'ticket_priorities', 'priority', '1.10', null);
select "schema".add_foreign_key('tickets', 'technology', 'technology_names', 'name', '1.0a100', '1.43');
select "schema".add_foreign_key('tickets', 'status', 'ticket_stati', 'status', '1.0a100', null);
select "schema".add_foreign_key('tickets', 'assigned_to', 'business_administrators', 'username', '1.0a125', '1.43');

\echo transactions
select "schema".add_foreign_key('transactions', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'source_accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'username', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'type', 'rates', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('transactions', 'type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('transactions', 'payment_type', 'payment_types', 'name', '1.0a100', null);
select "schema".add_foreign_key('transactions', 'merchant_account', 'merchant_accounts', 'name', '1.0a100', '1.28');
select "schema".add_foreign_key('transactions', 'processor', 'credit_card_processors', 'provider_id', '1.29', null);
select "schema".add_foreign_key('transactions', 'credit_card_transaction', 'credit_card_transactions', 'pkey', '1.29', null);

\echo usernames
select "schema".add_foreign_key('usernames', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('usernames', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('usernames', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);

\echo virtual_disks
select "schema".add_foreign_key('virtual_disks', 'virtual_server', 'virtual_servers', 'server', '1.36', null);
select "schema".add_foreign_key('virtual_disks', 'minimum_raid_type', 'raid_types', 'type', '1.41', '1.41');
select "schema".add_foreign_key('virtual_disks', 'primary_minimum_raid_type', 'raid_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_disks', 'secondary_minimum_raid_type', 'raid_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_disks', 'minimum_disk_type', 'disk_types', 'type', '1.41', '1.41');
select "schema".add_foreign_key('virtual_disks', 'primary_minimum_disk_type', 'disk_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_disks', 'secondary_minimum_disk_type', 'disk_types', 'type', '1.36', '1.40');

\echo virtual_servers
select "schema".add_foreign_key('virtual_servers', 'server', 'servers', 'pkey', '1.36', null);
select "schema".add_foreign_key('virtual_servers', 'minimum_processor_type', 'processor_types', 'type', '1.41', null);
select "schema".add_foreign_key('virtual_servers', 'primary_minimum_processor_type', 'processor_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_servers', 'secondary_minimum_processor_type', 'processor_types', 'type', '1.36', '1.40');
select "schema".add_foreign_key('virtual_servers', 'minimum_processor_architecture', 'architectures', 'name', '1.36', null);
select "schema".add_foreign_key('virtual_servers', 'primary_physical_server', 'physical_servers', 'server', '1.36', '1.40');
select "schema".add_foreign_key('virtual_servers', 'secondary_physical_server', 'physical_servers', 'server', '1.36', '1.40');

\echo whois_history
select "schema".add_foreign_key('whois_history', 'accounting', 'businesses', 'accounting', '1.20', null);
