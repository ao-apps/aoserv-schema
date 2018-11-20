select "schema".add_foreign_key('public', 'servers', 'farm',                     'infrastructure', 'server_farms',              'name',       '1.0a100', null);
select "schema".add_foreign_key(          'servers', 'owner',                                      'businesses',                'accounting', '1.0a100', '1.30');
select "schema".add_foreign_key(          'servers', 'administrator',                              'business_administrators',   'username',   '1.0a100', '1.30');
select "schema".add_foreign_key(          'servers', 'architecture',                               'architectures',             'name',       '1.0a100', '1.0a107');
select "schema".add_foreign_key(          'servers', 'operating_system_version',                   'operating_system_versions', 'pkey',       '1.0a100', '1.30');
select "schema".add_foreign_key(          'servers', 'operating_system_version',                   'operating_system_versions', 'pkey',       '1.31',    null);
select "schema".add_foreign_key('public', 'servers', 'package',                  'billing',        'packages',                  'pkey',       '1.31',    null);
