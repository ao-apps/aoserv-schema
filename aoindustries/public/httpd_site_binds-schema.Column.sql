select "schema".add_column('httpd_site_binds', 'pkey',                          0, 'pkey',    false,  true, false, 'a generated primary key',                         '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'httpd_site',                    1, 'fkey',    false, false, false, 'the site that is being referenced',               '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'httpd_bind',                    2, 'fkey',    false, false, false, 'the IP and port information for the binding',     '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'name',                          3, 'string',   true, false, false, 'the name of the bind, null for the default bind', '1.81.14', null);
select "schema".add_column('httpd_site_binds', 'access_log',                    4, 'path',    false, false, false, 'the file used for access logging',                '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'error_log',                     5, 'path',    false, false, false, 'the file used for error logging',                 '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'certificate',                   6, 'fkey',     true, false, false, 'the certificate used by this bind',               '1.81.10', null);
select "schema".add_column('httpd_site_binds', 'ssl_cert_file',                 7, 'path',     true, false, false, 'the file holding the public key (HTTPS only)',    '1.0a100', '1.81.9');
select "schema".add_column('httpd_site_binds', 'ssl_cert_key_file',             8, 'path',     true, false, false, 'the file holding the private key (HTTPS only)',   '1.0a100', '1.81.9');
select "schema".add_column('httpd_site_binds', 'ssl_cert_chain_file',           9, 'path',     true, false, false, 'the file holding the CA chain (HTTPS only)',      '1.81.4',  '1.81.9');
select "schema".add_column('httpd_site_binds', 'disable_log',                  10, 'fkey',     true, false, false, 'indicates that this bind is disabled',            '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'predisable_config',            11, 'string',   true, false, false, 'the config file before the site was disabled',    '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'is_manual',                    12, 'boolean', false, false, false, 'the config file is manually maintained',          '1.0a100', null);
select "schema".add_column('httpd_site_binds', 'redirect_to_primary_hostname', 13, 'boolean', false, false, false, 'tells that system to redirect any request that is not to either the IP address or the primary hostname to the primary hostname, while leaving the request path intact', '1.19', null);
select "schema".add_column('httpd_site_binds', 'include_site_config',          14, 'string',   true, false, false, 'controls whether this bind includes the per-site configuration file', '1.81.10', null);
