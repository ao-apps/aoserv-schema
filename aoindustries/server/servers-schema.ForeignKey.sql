select "schema".add_foreign_key('server', 'servers', 'farm',                     'infrastructure', 'server_farms',              'name',       '1.0a100', null);
select "schema".add_foreign_key('server', 'servers', 'owner',                    'account',        'businesses',                'accounting', '1.0a100', '1.30');
select "schema".add_foreign_key('server', 'servers', 'administrator',            'account',        'business_administrators',   'username',   '1.0a100', '1.30');
select "schema".add_foreign_key('server', 'servers', 'architecture',             'distribution',   'architectures',             'name',       '1.0a100', '1.0a107');
select "schema".add_foreign_key('server', 'servers', 'operating_system_version', 'distribution',   'operating_system_versions', 'pkey',       '1.0a100', '1.30');
select "schema".add_foreign_key('server', 'servers', 'operating_system_version', 'distribution',   'operating_system_versions', 'pkey',       '1.31',    null);
select "schema".add_foreign_key('server', 'servers', 'package',                  'billing',        'packages',                  'pkey',       '1.31',    null);
