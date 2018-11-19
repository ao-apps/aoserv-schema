select "schema".add_column('server_farms', 'name', 0, 'string', false, true, false, 'the unique name of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'description', 1, 'string', false, false, false, 'a description of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'protected_net', 2, 'string', false, false, false, 'the x.x.x.x/xx network that is protected by the firewalls', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'allow_same_server_backup', 3, 'boolean', false, false, false, 'allows backup files to be stored on the same server as the source files', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'backup_farm', 4, 'string', false, false, false, 'the farm that handles backup for this farm', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'owner', 5, 'fkey', false, false, false, 'the package that owns of the farm', '1.0a102', null);
select "schema".add_column('server_farms', 'use_restricted_smtp_port', 6, 'boolean', false, false, false, 'outgoing servers should use restricted source ports (affects firewall rules)', '1.26', null);
