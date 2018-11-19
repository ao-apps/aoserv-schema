\echo racks
select "schema".add_column('racks', 'pkey', 0, 'pkey', false, true, false, 'the unique ID for the rack', '1.36', null);
select "schema".add_column('racks', 'farm', 1, 'string', false, false, false, 'the server_farm housing the rack', '1.36', null);
select "schema".add_column('racks', 'name', 2, 'string', false, false, false, 'the per-farm unique name', '1.36', null);
select "schema".add_column('racks', 'max_power', 3, 'float', true, false, false, 'the maximum electrical load supported by the rack', '1.36', null);
select "schema".add_column('racks', 'total_rack_units', 4, 'int', true, false, false, 'the number of rack units of physical space', '1.36', null);

\echo resellers
select "schema".add_column('resellers', 'accounting', 0, 'accounting', false, true, false, '', '1.44', null);
select "schema".add_column('resellers', 'ticket_auto_escalate', 1, 'boolean', false, false, false, '', '1.44', null);

\echo resources
select "schema".add_column('resources', 'name', 0, 'string', false, true, true, 'the name of the specific resource', '1.0a100', null);
select "schema".add_column('resources', 'unit', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('resources', 'singular_display_unit', 2, 'string', false, false, true, 'the unit for display purposes (singular)', '1.0a123', '1.60');
select "schema".add_column('resources', 'plural_display_unit', 3, 'string', false, false, true, 'the unit for display purposes (plural)', '1.0a123', '1.60');
select "schema".add_column('resources', 'per_unit', 4, 'string', false, false, true, 'the unit for display as a "per"', '1.0a123', '1.60');
select "schema".add_column('resources', 'description', 5, 'string', false, false, true, 'a description of the resource', '1.0a100', '1.60');

\echo sendmail_binds
select "schema".add_column('sendmail_binds', 'net_bind',        0, 'fkey',   false,  true, false, 'the IP address, port, and protocol details',   '1.81.10', null);
select "schema".add_column('sendmail_binds', 'sendmail_server', 1, 'fkey',   false, false, false, 'the server that is listening on the address',  '1.81.10', null);
select "schema".add_column('sendmail_binds', 'servername',      2, 'string',  true, false, false, 'the Name for DaemonPortOptions for this bind', '1.81.10', null);

\echo sendmail_servers
select "schema".add_column('sendmail_servers', 'pkey',                      0, 'pkey',        false,  true, false, 'a generated unique number',                                             '1.81.10', null);
select "schema".add_column('sendmail_servers', 'ao_server',                 1, 'fkey',        false, false, false, 'the pkey of the server that runs this sendmail instance',               '1.81.10', null);
select "schema".add_column('sendmail_servers', 'name',                      2, 'string',       true, false, false, 'the name of the instance on the server, null for the default instance', '1.81.10', null);
select "schema".add_column('sendmail_servers', 'package',                   3, 'fkey',        false, false, false, 'the package that owns the SSL certificate',                             '1.81.10', null);
select "schema".add_column('sendmail_servers', 'hostname',                  4, 'domain_name',  true, false, false, 'the fully qualified hostname for Dw, Dm, and Dj',                       '1.81.10', null);
select "schema".add_column('sendmail_servers', 'server_certificate',        5, 'fkey',        false, false, false, 'the certificate used for this server',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_certificate',        6, 'fkey',        false, false, false, 'the certificate used for this client',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'allow_plaintext_auth',      7, 'boolean',     false, false, false, 'allows plaintext authentication (PLAIN/LOGIN) on non-TLS links',        '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_queue_children',        8, 'int',          true, false, false, 'the value for confMAX_QUEUE_CHILDREN',                                  '1.81.10', null);
select "schema".add_column('sendmail_servers', 'nice_queue_run',            9, 'int',          true, false, false, 'the value for confNICE_QUEUE_RUN',                                      '1.81.10', null);
select "schema".add_column('sendmail_servers', 'delay_la',                 10, 'int',          true, false, false, 'the value for confDELAY_LA',                                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'queue_la',                 11, 'int',          true, false, false, 'the value for confQUEUE_LA',                                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'refuse_la',                12, 'int',          true, false, false, 'the value for confREFUSE_LA',                                           '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_daemon_children',      13, 'int',          true, false, false, 'the value for confMAX_DAEMON_CHILDREN',                                 '1.81.10', null);
select "schema".add_column('sendmail_servers', 'bad_rcpt_throttle',        14, 'int',          true, false, false, 'the value for confBAD_RCPT_THROTTLE',                                   '1.81.10', null);
select "schema".add_column('sendmail_servers', 'connection_rate_throttle', 15, 'int',          true, false, false, 'the value for confCONNECTION_RATE_THROTTLE',                            '1.81.10', null);
select "schema".add_column('sendmail_servers', 'max_message_size',         16, 'int',          true, false, false, 'the value for confMAX_MESSAGE_SIZE',                                    '1.81.10', null);
select "schema".add_column('sendmail_servers', 'min_free_blocks',          17, 'int',          true, false, false, 'the value for confMIN_FREE_BLOCKS',                                     '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_addr_inet',         18, 'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet',                       '1.81.10', null);
select "schema".add_column('sendmail_servers', 'client_addr_inet6',        19, 'fkey',         true, false, false, 'the Addr for ClientPortOptions with Family=inet6',                      '1.81.10', null);

\echo server_farms
select "schema".add_column('server_farms', 'name', 0, 'string', false, true, false, 'the unique name of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'description', 1, 'string', false, false, false, 'a description of the farm', '1.0a100', null);
select "schema".add_column('server_farms', 'protected_net', 2, 'string', false, false, false, 'the x.x.x.x/xx network that is protected by the firewalls', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'allow_same_server_backup', 3, 'boolean', false, false, false, 'allows backup files to be stored on the same server as the source files', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'backup_farm', 4, 'string', false, false, false, 'the farm that handles backup for this farm', '1.0a100', '1.30');
select "schema".add_column('server_farms', 'owner', 5, 'fkey', false, false, false, 'the package that owns of the farm', '1.0a102', null);
select "schema".add_column('server_farms', 'use_restricted_smtp_port', 6, 'boolean', false, false, false, 'outgoing servers should use restricted source ports (affects firewall rules)', '1.26', null);

\echo servers
select "schema".add_column('servers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('servers', 'hostname', 1, 'hostname', false, true, false, 'the unique hostname of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'farm', 2, 'string', false, false, false, 'the name of the farm the server is located in', '1.0a100', null);
select "schema".add_column('servers', 'owner', 3, 'accounting', false, false, false, 'the business that owns the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'administrator', 4, 'username', false, false, false, 'the primary administrator of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'description', 5, 'string', false, false, false, 'a description of the servers purpose', '1.0a100', null);
select "schema".add_column('servers', 'architecture', 6, 'string', false, false, false, '', '1.0a100', '1.0a107');
select "schema".add_column('servers', 'backup_hour', 7, 'int', false, false, false, 'the hour of the day the backup will occur, in server time zone', '1.0a100', '1.30');
select "schema".add_column('servers', 'last_backup_time', 8, 'time', true, false, false, 'the time the last backup was started', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 9, 'fkey', false, false, false, 'the version of operating system running on the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 10, 'fkey', true, false, false, 'the version of operating system running on the server, if known', '1.31', null);
select "schema".add_column('servers', 'asset_label', 11, 'string', true, false, false, 'the value contained on any asset label', '1.0a108', '1.30');
select "schema".add_column('servers', 'minimum_power', 12, 'float', true, false, false, 'the minimum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'maximum_power', 13, 'float', true, false, false, 'the maximum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'package', 14, 'fkey', false, false, false, 'the package accountable for resources used by the server', '1.31', null);
select "schema".add_column('servers', 'name', 15, 'string', false, false, false, 'the per-package unique name of the server (no special formatting required)', '1.31', null);
select "schema".add_column('servers', 'monitoring_enabled', 16, 'boolean', false, false, false, 'enables/disables monitoring', '1.32', null);

\echo shells
select "schema".add_column('shells', 'path', 0, 'path', false, true, true, 'the complete path to the executable', '1.0a100', null);
select "schema".add_column('shells', 'is_login', 1, 'boolean', false, false, true, 'indicates if the shells gives process control', '1.0a100', null);
select "schema".add_column('shells', 'is_system', 2, 'boolean', false, false, true, 'indicates that this shell is for internal use only', '1.0a100', null);

\echo signup_request_options
select "schema".add_column('signup_request_options', 'pkey', 0, 'pkey', false, true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup_request_options', 'request', 1, 'fkey', false, false, false, 'the id of the request this option is part of', '1.23', null);
select "schema".add_column('signup_request_options', 'name', 2, 'string', false, false, false, 'the unique-per-request name of the option', '1.23', null);
select "schema".add_column('signup_request_options', 'value', 3, 'string', true, false, false, 'the value of the option', '1.23', null);

\echo signup_requests
select "schema".add_column('signup_requests', 'pkey', 0, 'pkey', false, true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup_requests', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the parent business for the new account', '1.23', '1.43');
select "schema".add_column('signup_requests', 'brand', 2, 'accounting', false, false, false, 'the brand of the parent business for the new account', '1.44', null);
select "schema".add_column('signup_requests', 'time', 3, 'time', false, false, false, 'the time the request was added', '1.23', null);
select "schema".add_column('signup_requests', 'ip_address', 4, 'ip_address', false, false, false, 'the IP address of the user who signed-up', '1.23', null);
select "schema".add_column('signup_requests', 'package_definition', 5, 'fkey', false, false, false, 'the pkey of the Package Definition requested', '1.23', null);
select "schema".add_column('signup_requests', 'business_name', 6, 'string', false, false, false, 'the name of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_phone', 7, 'string', false, false, false, 'the phone number of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_phone', 8, 'phone', false, false, false, 'the phone number of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_fax', 9, 'string', true, false, false, 'the fax number of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_fax', 10, 'phone', true, false, false, 'the fax number of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_address1', 11, 'string', false, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_address2', 12, 'string', true, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup_requests', 'business_city',     13, 'city', false, false, false, 'the city  of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_city',     14, 'string', false, false, false, 'the city  of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_state',    15, 'state', true, false, false, 'the state or providence of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_state',    16, 'string', true, false, false, 'the state or providence of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_country',  17, 'country', false, false, false, 'the two-character country code of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_country',  18, 'string', false, false, false, 'the two-character country code of the business', '1.69', null);
select "schema".add_column('signup_requests', 'business_zip',      19, 'zip', true, false, false, 'the zip code of the business', '1.23', '1.68');
select "schema".add_column('signup_requests', 'business_zip',      20, 'string', true, false, false, 'the zip code of the business', '1.69', null);
select "schema".add_column('signup_requests', 'ba_name',           21, 'string', false, false, false, 'the administrator''s name', '1.23', null);
select "schema".add_column('signup_requests', 'ba_title',          22, 'string', true, false, false, 'the administrator''s title', '1.23', null);
select "schema".add_column('signup_requests', 'ba_work_phone',     23, 'string', false, false, false, 'the administrator''s work phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_work_phone',     24, 'string', false, false, false, 'the administrator''s work phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_cell_phone',     25, 'string', true, false, false, 'the administrator''s cell phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_cell_phone',     26, 'string', true, false, false, 'the administrator''s cell phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_home_phone',     27, 'string', true, false, false, 'the administrator''s home phone', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_home_phone',     28, 'string', true, false, false, 'the administrator''s home phone', '1.69', null);
select "schema".add_column('signup_requests', 'ba_fax',            29, 'string', true, false, false, 'the administrator''s fax number', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_fax',            30, 'string', true, false, false, 'the administrator''s fax number', '1.69', null);
select "schema".add_column('signup_requests', 'ba_email',          31, 'email', false, false, false, 'the administrator''s email address', '1.23', null);
select "schema".add_column('signup_requests', 'ba_address1',       32, 'string', true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'ba_address2',       33, 'string', true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'ba_city',           34, 'city', true, false, false, 'the city of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_city',           35, 'string', true, false, false, 'the city of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_state',          36, 'state', true, false, false, 'the state or providence of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_state',          37, 'string', true, false, false, 'the state or providence of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_country',        38, 'country', true, false, false, 'the two-character country code of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_country',        39, 'string', true, false, false, 'the two-character country code of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_zip',            40, 'zip', true, false, false, 'the zip code of the administrator', '1.23', '1.68');
select "schema".add_column('signup_requests', 'ba_zip',            41, 'string', true, false, false, 'the zip code of the administrator', '1.69', null);
select "schema".add_column('signup_requests', 'ba_username',       42, 'username', false, false, false, 'the username of the administrator', '1.23', null);
select "schema".add_column('signup_requests', 'billing_contact',   43, 'string', false, false, false, 'the name of the billing contact', '1.23', null);
select "schema".add_column('signup_requests', 'billing_email',        44, 'email', false, false, false, 'the email address of the billing contact', '1.23', null);
select "schema".add_column('signup_requests', 'billing_use_monthly',  45, 'boolean', false, false, false, 'if true, the credit_card will be used every month automatically', '1.23', null);
select "schema".add_column('signup_requests', 'billing_pay_one_year', 46, 'boolean', false, false, false, 'if true, one-year in advance will be charged to the credit_card and they will receive a credit for a free month', '1.23', null);
select "schema".add_column('signup_requests', 'encrypted_data',       47, 'string', false, false, false, 'the credit card details and password are stored encrypted', '1.23', null);
select "schema".add_column('signup_requests', 'encryption_from',      48, 'fkey', false, false, false, 'the from that was used for encryption', '1.31', null);
select "schema".add_column('signup_requests', 'encryption_key',       49, 'fkey', false, false, false, 'the recipient that was used for encryption', '1.23', '1.30');
select "schema".add_column('signup_requests', 'encryption_recipient', 50, 'fkey', false, false, false, 'the recipient that was used for encryption', '1.31', null);
select "schema".add_column('signup_requests', 'completed_by',         51, 'username', true, false, false, 'the username of the person who completed this sign-up request', '1.23', null);
select "schema".add_column('signup_requests', 'completed_time',       52, 'time', true, false, false, 'the time this request was completed', '1.23', null);

\echo spam_email_messages
select "schema".add_column('spam_email_messages', 'pkey', 0, 'pkey', false, true, false, 'a generated unique key', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'email_relay', 1, 'fkey', false, false, false, 'the relay that has been denied', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'time', 2, 'time', false, false, false, 'the time the message was added', '1.0a100', null);
select "schema".add_column('spam_email_messages', 'message', 3, 'string', false, false, false, 'the message contents', '1.0a100', null);

\echo ssl_certificate_names
select "schema".add_column('ssl_certificate_names', 'pkey',            0, 'pkey',        false,  true, false, 'a generated primary key',                                      '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'ssl_certificate', 1, 'fkey',        false, false, false, 'the pkey of the SSL certificate this name is on',              '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_common_name',  2, 'boolean',     false, false, false, 'indicates this is the Common Name (CN) or a Subject Alt Name', '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'is_wildcard',     3, 'boolean',     false, false, false, 'is a *.(domain) wildcard certificate',                         '1.81.10', null);
select "schema".add_column('ssl_certificate_names', 'domain',          4, 'domain_name', false, false, false, 'the domain name',                                              '1.81.10', null);

\echo ssl_certificate_other_uses
select "schema".add_column('ssl_certificate_other_uses', 'pkey',            0, 'pkey',   false,  true, false, 'a generated primary key',                                                 '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'ssl_certificate', 1, 'fkey',   false, false, false, 'the pkey of the SSL certificate this name is on',                         '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'sort_order',      2, 'short',  false, false, false, 'the per-certificate unique sort ordering',                                '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'count',           3, 'int',    false, false, false, 'the number of times this other resource uses the certificate',            '1.81.16', null);
select "schema".add_column('ssl_certificate_other_uses', 'display',         4, 'string', false, false, false, 'a short display value, which will often follow the count when displayed', '1.81.16', null);

\echo ssl_certificates
select "schema".add_column('ssl_certificates', 'pkey',         0, 'pkey',  false,  true, false, 'a generated primary key',                                    '1.81.10', null);
select "schema".add_column('ssl_certificates', 'ao_server',    1, 'fkey',  false, false, false, 'the pkey of the server the SSL certificate is on',           '1.81.10', null);
select "schema".add_column('ssl_certificates', 'package',      2, 'fkey',  false, false, false, 'the package that owns the SSL certificate',                  '1.81.10', null);
select "schema".add_column('ssl_certificates', 'key_file',     3, 'path',  false, false, false, 'the file holding the private key',                           '1.81.10', null);
select "schema".add_column('ssl_certificates', 'csr_file',     4, 'path',   true, false, false, 'the file holding the CSR',                                   '1.81.10', null);
select "schema".add_column('ssl_certificates', 'cert_file',    5, 'path',  false, false, false, 'the file holding the public key',                            '1.81.10', null);
select "schema".add_column('ssl_certificates', 'chain_file',   6, 'path',   true, false, false, 'the file holding the CA chain',                              '1.81.10', null);
select "schema".add_column('ssl_certificates', 'certbot_name', 7, 'string', true, false, false, 'the name of the certbot-managed Let''s Encrypt certificate', '1.81.10', null);

\echo system_email_aliases
select "schema".add_column('system_email_aliases', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server the entry is on', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'address', 2, 'string', false, false, false, 'the address (username only) to match', '1.0a100', null);
select "schema".add_column('system_email_aliases', 'destination', 3, 'string', false, false, false, 'the destination, as found in /etc/aliases', '1.0a100', null);

\echo technologies
select "schema".add_column('technologies', 'pkey', 0, 'pkey', false, true, true, 'the unique identifier', '1.4', null);
select "schema".add_column('technologies', 'name', 1, 'string', false, false, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technologies', 'class', 2, 'string', false, false, true, 'the name of the group this package belongs to', '1.0a100', null);

\echo technology_classes
select "schema".add_column('technology_classes', 'name', 0, 'string', false, true, true, 'the name of the class', '1.0a100', null);
select "schema".add_column('technology_classes', 'description', 1, 'string', false, false, true, 'a description of the class', '1.0a100', null);

\echo technology_names
select "schema".add_column('technology_names', 'name', 0, 'string', false, true, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('technology_names', 'image_filename', 1, 'string', true, false, true, 'the name of the file containing the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_width', 2, 'int', true, false, true, 'the width of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_height', 3, 'int', true, false, true, 'the height of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'image_alt', 4, 'string', true, false, true, 'the alt attribute of the image', '1.0a100', null);
select "schema".add_column('technology_names', 'home_page_url', 5, 'url', true, false, true, 'the URL of the technology home page', '1.0a100', null);

\echo technology_versions
select "schema".add_column('technology_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('technology_versions', 'name', 1, 'string', false, false, true, 'the name of the software package', '1.0a100', null);
select "schema".add_column('technology_versions', 'version', 2, 'string', false, false, true, 'the version number of the package in #.##.##-## format', '1.0a100', null);
select "schema".add_column('technology_versions', 'updated', 3, 'time', false, false, true, 'the time this package was last updated', '1.0a100', null);
select "schema".add_column('technology_versions', 'owner', 4, 'username', false, false, false, 'the business_administrator who is responsible for maintaining this package', '1.0a100', null);
select "schema".add_column('technology_versions', 'operating_system_version', 5, 'fkey', true, false, true, 'the version of the OS that this packages is installed', '1.0a108', null);
select "schema".add_column('technology_versions', 'disable_time', 6, 'time', true, false, true, 'the time this version is no longer supported', '1.78', null);
select "schema".add_column('technology_versions', 'disable_reason', 7, 'string', true, false, true, 'the reason this version is no longer supported', '1.78', null);

\echo ticket_action_types
select "schema".add_column('ticket_action_types', 'type', 0, 'string', false, true, true, '', '1.44', null);
select "schema".add_column('ticket_action_types', 'visible_admin_only', 1, 'boolean', false, false, true, '', '1.44', null);

\echo ticket_actions
select "schema".add_column('ticket_actions', 'pkey',             0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'ticket',           1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'administrator',    2, 'username', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'time',             3, 'time', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'action_type',      4, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_accounting',   5, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket_actions', 'old_accounting',   6, 'accounting', true, false, false, '', '1.69', null);
select "schema".add_column('ticket_actions', 'new_accounting',   7, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('ticket_actions', 'new_accounting',   8, 'accounting', true, false, false, '', '1.69', null);
select "schema".add_column('ticket_actions', 'old_priority',     9, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_priority',    10, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_type',        11, 'string', true, false, false, '', '1.49', null);
select "schema".add_column('ticket_actions', 'new_type',        12, 'string', true, false, false, '', '1.49', null);
select "schema".add_column('ticket_actions', 'old_status',      13, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_status',      14, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_assigned_to', 15, 'string', true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket_actions', 'old_assigned_to', 16, 'username', true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket_actions', 'new_assigned_to', 17, 'string', true, false, false, '', '1.44', '1.80');
select "schema".add_column('ticket_actions', 'new_assigned_to', 18, 'username', true, false, false, '', '1.80.0', null);
select "schema".add_column('ticket_actions', 'old_category',    19, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_category',    20, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'old_value',       21, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'new_value',       22, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'from_address',    23, 'email', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'summary',         24, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'details',         25, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_actions', 'raw_email',       26, 'string', true, false, false, '', '1.44', null);

\echo ticket_assignments
select "schema".add_column('ticket_assignments', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'ticket', 1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_assignments', 'administrator', 3, 'username', false, false, false, '', '1.44', null);

\echo ticket_brand_categories
select "schema".add_column('ticket_brand_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'brand', 1, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'category', 2, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket_brand_categories', 'enabled', 3, 'boolean', false, false, false, '', '1.44', null);

\echo ticket_categories
select "schema".add_column('ticket_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'parent', 1, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'name', 2, 'string', false, false, false, '', '1.44', null);

\echo ticket_priorities
select "schema".add_column('ticket_priorities', 'priority', 0, 'string', false, true, true, '', '1.0a100', null);

\echo ticket_stati
select "schema".add_column('ticket_stati', 'status', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('ticket_stati', 'description', 1, 'string', false, false, true, '', '1.0a100', '1.43');
select "schema".add_column('ticket_stati', 'sort_order', 2, 'short', false, true, true, '', '1.44', null);

\echo ticket_types
select "schema".add_column('ticket_types', 'type', 0, 'string', false, true, true, '', '1.0a100', null);
select "schema".add_column('ticket_types', 'description', 1, 'string', false, false, true, '', '1.0a100', '1.43');
select "schema".add_column('ticket_types', 'client_view', 2, 'boolean', false, false, true, '', '1.0a100', '1.43');

\echo tickets
select "schema".add_column('tickets', 'pkey', 0, 'pkey', false, true, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'brand', 1, 'accounting', false, false, false, '', '1.46', null);
select "schema".add_column('tickets', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'package', 3, 'package', false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('tickets', 'accounting', 4, 'accounting', true, false, false, '', '1.0a126', null);
select "schema".add_column('tickets', 'language', 5, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'administrator', 6, 'username', false, false, false, '', '1.0a100', '1.0a125');
select "schema".add_column('tickets', 'created_by', 7, 'username', true, false, false, '', '1.0a126', null);
select "schema".add_column('tickets', 'category', 8, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'ticket_type', 9, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'from_address', 10, 'email', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'summary', 11, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'details', 12, 'string', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'details', 13, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'raw_email', 14, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('tickets', 'open_date', 15, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'deadline', 16, 'time', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'close_date', 17, 'time', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'closed_by', 18, 'username', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'client_priority', 19, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'admin_priority', 20, 'string', false, false, false, '', '1.0a100', '1.9');
select "schema".add_column('tickets', 'admin_priority', 21, 'string', true, false, false, '', '1.10', null);
select "schema".add_column('tickets', 'technology', 22, 'string', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('tickets', 'status', 23, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('tickets', 'status_timeout', 24, 'time', true, false, false, '', '1.69', null);
select "schema".add_column('tickets', 'assigned_to', 25, 'string', true, false, false, '', '1.0a125', '1.43');
select "schema".add_column('tickets', 'contact_emails', 26, 'string', false, false, false, '', '1.0a125', null);
select "schema".add_column('tickets', 'contact_phone_numbers', 27, 'string', false, false, false, '', '1.0a125', null);
select "schema".add_column('tickets', 'internal_notes', 28, 'string', false, false, false, '', '1.69', null);

\echo time_zones
select "schema".add_column('time_zones', 'name', 0, 'string', false, true, true, 'The unique name of this time zone', '1.2', null);

\echo transaction_types
select "schema".add_column('transaction_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a123', null);
select "schema".add_column('transaction_types', 'display', 1, 'string', false, false, true, 'the short display value', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'description', 2, 'string', false, false, true, 'a description of the type of payment', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'unit', 3, 'string', false, false, true, 'the unit of the transaction type', '1.0a123', '1.60');
select "schema".add_column('transaction_types', 'is_credit', 4, 'boolean', false, false, true, 'indicates that this type of transaction represents payment or credit', '1.0a123', null);

\echo transactions
select "schema".add_column('transactions', 'time', 0, 'time', false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('transactions', 'transid', 1, 'int', false, true, false, 'the unique identifier for this transaction', '1.0a100', '1.68');
select "schema".add_column('transactions', 'transid', 2, 'pkey', false, true, false, 'the unique identifier for this transaction', '1.69', null);
select "schema".add_column('transactions', 'accounting', 3, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.0a100', null);
select "schema".add_column('transactions', 'source_accounting', 4, 'accounting', false, false, false, 'the source of the charge to this account', '1.0a100', null);
select "schema".add_column('transactions', 'username', 5, 'username', false, false, false, 'the identifier for the admin involved in the transaction (see business_administrators)', '1.0a100', null);
select "schema".add_column('transactions', 'type', 6, 'string', false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('transactions', 'description', 7, 'string', false, false, false, 'description of the transaction', '1.0a100', null);
select "schema".add_column('transactions', 'quantity', 8, 'decimal_3', false, false, false, 'the number of times to charge the account', '1.0a100', null);
select "schema".add_column('transactions', 'rate', 9, 'decimal_2', false, false, false, 'the amount per unit of quantity', '1.0a100', null);
select "schema".add_column(
    'transactions',
    'payment_type',
    10,
    'string',
    true,
    false,
    false,
    'the type of payment made<br>
check - check, check number will be in payment_info<br>
money_order - money order<br>
visa - visa card, last four in payment_info<br>
mastercard - mastercard, last four in payment_info<br>
amex - amex card, last four in payment_info<br>
discover - discover card, last four in payment_info',
    '1.0a100',
    null
);
select "schema".add_column('transactions', 'payment_info', 11, 'string', true, false, false, 'the payment info, such as last four of credit card number of check number', '1.0a100', null);
select "schema".add_column('transactions', 'merchant_account', 12, 'string', true, false, false, 'the merchant account that the payment was processed through', '1.0a100', '1.28');
select "schema".add_column('transactions', 'processor', 13, 'string', true, false, false, 'the credit card processor that handled the payment', '1.29', null);
select "schema".add_column('transactions', 'credit_card_transaction', 14, 'fkey', true, false, false, 'the credit card transaction for this transaction', '1.29', null);
select "schema".add_column('transactions', 'apr_num', 15, 'int', true, false, false, 'the approval number for given transaction', '1.0a100', '1.0a127');
select "schema".add_column('transactions', 'apr_num', 16, 'string', true, false, false, 'the approval number for given transaction', '1.0a128', '1.28');
select "schema".add_column(
    'transactions',
    'payment_confirmed',
    17,
    'string',
    false,
    false,
    false,
    '''Y'' if the payment is confirmed<br>
''W'' if waiting confirmation<br>
''N'' if confirmation failed',
    '1.0a100',
    null
);

\echo us_states
select "schema".add_column('us_states', 'code', 0, 'string', false, true, true, 'the two-character code for the state', '1.0a100', null);
select "schema".add_column('us_states', 'name', 1, 'string', false, false, true, 'the name of the state', '1.0a100', null);

\echo usernames
select "schema".add_column('usernames', 'username', 0, 'username', false, true, false, 'the unique username', '1.0a100', null);
select "schema".add_column('usernames', 'package', 1, 'package', false, false, false, 'the package name that this user is part of', '1.0a100', '1.80');
select "schema".add_column('usernames', 'package', 2, 'accounting', false, false, false, 'the package name that this user is part of', '1.80.0', null);
select "schema".add_column('usernames', 'disable_log', 3, 'fkey', true, false, false, 'indicates that the username is disabled', '1.0a100', null);

\echo virtual_disks
select "schema".add_column('virtual_disks', 'pkey', 0, 'pkey', false, true, false, 'a generated unique ID', '1.36', null);
select "schema".add_column('virtual_disks', 'virtual_server', 1, 'fkey', false, false, false, 'the virtual server this disk belongs to', '1.36', null);
select "schema".add_column('virtual_disks', 'device', 2, 'string', false, false, false, 'the per-virtual-server unique device, such as xvda or xvdb', '1.36', null);
select "schema".add_column('virtual_disks', 'minimum_raid_type', 3, 'string', true, false, false, 'the minimum RAID type for the primary physical server', '1.41', '1.41');
select "schema".add_column('virtual_disks', 'primary_minimum_raid_type', 4, 'string', true, false, false, 'the minimum RAID type for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_raid_type', 5, 'string', true, false, false, 'the minimum RAID type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'minimum_disk_type', 6, 'string', true, false, false, 'the minimum disk type for the primary physical server', '1.41', '1.41');
select "schema".add_column('virtual_disks', 'primary_minimum_disk_type', 7, 'string', true, false, false, 'the minimum disk type for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_disk_type', 8, 'string', true, false, false, 'the minimum disk type for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'minimum_disk_speed', 9, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.41', null);
select "schema".add_column('virtual_disks', 'minimum_disk_speed_target', 10, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.43', null);
select "schema".add_column('virtual_disks', 'primary_minimum_disk_speed', 11, 'int', true, false, false, 'the minimum disk speed in RPM for the primary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_minimum_disk_speed', 12, 'int', true, false, false, 'the minimum disk speed in RPM for the secondary physical server', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'extents', 13, 'int', false, false, false, 'the total number of LVM extents for this device', '1.36', null);
select "schema".add_column('virtual_disks', 'weight', 14, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.41', null);
select "schema".add_column('virtual_disks', 'weight_target', 15, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.43', null);
select "schema".add_column('virtual_disks', 'primary_weight', 16, 'short', false, false, false, 'the amount of primary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'secondary_weight', 17, 'short', false, false, false, 'the amount of secondary disk I/O allocated to this virtual device on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_disks', 'primary_physical_volumes_locked', 18, 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_disks', 'secondary_physical_volumes_locked', 19, 'boolean', false, false, false, 'indicates this device is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_disks', 'verify_day_of_week', 20, 'int', false, false, false, 'the day of the week verification will begin', '1.72', null);
select "schema".add_column('virtual_disks', 'verify_hour_of_day', 21, 'int', false, false, false, 'the hour of day verification will begin', '1.72', null);

\echo virtual_servers
select "schema".add_column('virtual_servers', 'server', 0, 'fkey', false, true, false, 'the server that is virtualized', '1.36', null);
select "schema".add_column('virtual_servers', 'primary_ram', 1, 'int', false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.36', null);
select "schema".add_column('virtual_servers', 'primary_ram_target', 2, 'int', false, false, false, 'the amount of RAM required in primary mode in megabytes', '1.43', null);
select "schema".add_column('virtual_servers', 'secondary_ram', 3, 'int', true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.36', null);
select "schema".add_column('virtual_servers', 'secondary_ram_target', 4, 'int', true, false, false, 'the amount of RAM required in primary mode in megabytes or 0 if secondary not required', '1.43', null);
select "schema".add_column('virtual_servers', 'minimum_processor_type', 5, 'string', true, false, false, 'the minimum processor type', '1.41', null);
select "schema".add_column('virtual_servers', 'primary_minimum_processor_type', 6, 'string', true, false, false, 'the minimum processor type in primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_minimum_processor_type', 7, 'string', true, false, false, 'the minimum processor type in secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'minimum_processor_architecture', 8, 'string', false, false, false, 'the minimum processor architecture, compatible architectures may be substituted', '1.36', null);
select "schema".add_column('virtual_servers', 'minimum_processor_speed', 9, 'int', true, false, false, 'the minimum processor speed in MHz', '1.41', null);
select "schema".add_column('virtual_servers', 'minimum_processor_speed_target', 10, 'int', true, false, false, 'the minimum processor speed in MHz', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_minimum_processor_speed', 11, 'int', true, false, false, 'the minimum processor speed in MHz for primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_minimum_processor_speed', 12, 'int', true, false, false, 'the minimum processor speed in MHz for secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'processor_cores', 13, 'short', false, false, false, 'the number of processor cores', '1.41', null);
select "schema".add_column('virtual_servers', 'processor_cores_target', 14, 'short', false, false, false, 'the number of processor cores', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_processor_cores', 15, 'short', false, false, false, 'the number of processor cores used in primary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_processor_cores', 16, 'short', true, false, false, 'the number of processor cores used in secondary mode', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'processor_weight', 17, 'short', false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.41', null);
select "schema".add_column('virtual_servers', 'processor_weight_target', 18, 'short', false, false, false, 'the processor allocation weight on a scale of 1-1024', '1.43', null);
select "schema".add_column('virtual_servers', 'primary_processor_weight', 19, 'short', false, false, false, 'the processor allocation weight in primary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_processor_weight', 20, 'short', true, false, false, 'the processor allocation weight in secondary mode on a scale of 1-1024', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'primary_physical_server', 21, 'fkey', false, false, false, 'the physical server that provides the primary mode resources', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'primary_physical_server_locked', 22, 'boolean', false, false, false, 'indicates the primary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_servers', 'secondary_physical_server', 23, 'fkey', false, false, false, 'the physical server that provides the secondary mode resources', '1.36', '1.40');
select "schema".add_column('virtual_servers', 'secondary_physical_server_locked', 24, 'boolean', false, false, false, 'indicates the secondary server is locked and should not be moved by automated means', '1.36', null);
select "schema".add_column('virtual_servers', 'requires_hvm', 25, 'boolean', false, false, false, 'indicates requires full hardware virtualization', '1.37', null);
select "schema".add_column('virtual_servers', 'vnc_password', 26, 'string', false, true, false, 'the password for VNC console access or null to disable VNC access', '1.51', null);

\echo whois_history
select "schema".add_column('whois_history', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated identifier', '1.20', null);
select "schema".add_column('whois_history', 'time', 1, 'time', false, false, false, 'the time the whois query was performed', '1.20', null);
select "schema".add_column('whois_history', 'accounting', 2, 'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.20', null);
select "schema".add_column('whois_history', 'zone', 3, 'zone', false, false, false, 'the top level domain (zone) that was queried', '1.20', null);
select "schema".add_column('whois_history', 'whois_output', 4, 'string', false, false, false, 'the output from the whois lookup', '1.20', null);
