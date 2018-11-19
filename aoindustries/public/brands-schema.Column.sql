select "schema".add_column('brands', 'accounting', 0, 'accounting', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'nameserver1', 1, 'hostname', false, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver1', 2, 'domain_name', false, false, false, '', '1.69', null);
select "schema".add_column('brands', 'nameserver2', 3, 'hostname', false, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver2', 4, 'domain_name', false, false, false, '', '1.69', null);
select "schema".add_column('brands', 'nameserver3', 5, 'hostname', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver3', 6, 'domain_name', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'nameserver4', 7, 'hostname', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'nameserver4', 8, 'domain_name', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'smtp_linux_server_account', 9, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'smtp_host', 10, 'hostname', true, false, false, '', '1.46', null);
select "schema".add_column('brands', 'smtp_password', 11, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'imap_linux_server_account', 12, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'imap_host', 13, 'hostname', true, false, false, '', '1.46', null);
select "schema".add_column('brands', 'imap_password', 14, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_email_address', 15, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'support_email_display', 16, 'string', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_email_address', 17, 'fkey', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_email_display', 18, 'string', false, true, false, '', '1.44', null);
select "schema".add_column('brands', 'ticket_encryption_from', 19, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'ticket_encryption_recipient', 20, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_encryption_from', 21, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'signup_encryption_recipient', 22, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_toll_free', 23, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_toll_free', 24, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_day_phone', 25, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_day_phone', 26, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_emergency_phone1', 27, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_emergency_phone1', 28, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_emergency_phone2', 29, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_emergency_phone2', 30, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_fax', 31, 'string', true, false, false, '', '1.44', '1.68');
select "schema".add_column('brands', 'support_fax', 32, 'phone', true, false, false, '', '1.69', null);
select "schema".add_column('brands', 'support_mailing_address1', 33, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_mailing_address2', 34, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_mailing_address3', 35, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'support_mailing_address4', 36, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'english_enabled', 37, 'boolean', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'japanese_enabled', 38, 'boolean', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_http_url_base', 39, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_https_url_base', 40, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_google_verify_content', 41, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_noindex', 42, 'boolean', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_google_analytics_new_tracking_code', 43, 'string', true, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_signup_admin_address', 44, 'string', false, false, false, '', '1.44', null);
select "schema".add_column('brands', 'aoweb_struts_vnc_bind', 45, 'fkey', false, true, false, '', '1.52', null);
select "schema".add_column('brands', 'aoweb_struts_keystore_type', 46, 'string', false, false, false, '', '1.53', null);
select "schema".add_column('brands', 'aoweb_struts_keystore_password', 47, 'string', false, false, false, '', '1.53', null);
