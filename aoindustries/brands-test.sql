begin;
insert into brands values(
  'AOINDUSTRIES', -- accounting
  -- Name server settings
  'ns1.aoindustries.com', -- nameserver1
  'ns2.aoindustries.com', -- nameserver2
  'ns3.aoindustries.com', -- nameserver3
  'ns4.aoindustries.com', -- nameserver4
  -- Email settings
  84, -- (select pkey from linux_server_accounts where ao_server=(select server from ao_servers where hostname='test.aoindustries.com') and username='aoadmin'), -- smtp_linux_server_account
  null, -- smtp_host
  'changeme', -- smtp_password
  84, -- (select pkey from linux_server_accounts where ao_server=(select server from ao_servers where hostname='test.aoindustries.com') and username='aoadmin'), -- imap_linux_server_account
  null, -- imap_host
  'changeme', -- imap_password
  9, -- support_email_address
  'AO Industries, Inc. - Support', -- support_email_display
  9, -- signup_email_address
  'AO Industries, Inc. - Support', -- signup_email_display
  -- Ticket-specific settings
  1, -- ticket_encryption_from
  2, -- ticket_encryption_recipient
  -- Signup encryption settings
  1, -- signup_encryption_from
  2, -- signup_encryption_recipient
  -- Telephone contacts
  '(800) 519-9541', -- support_toll_free
  '(251) 607-9556', -- support_day_phone
  '(205) 454-2556', -- support_emergency_phone1
  '(251) 463-8964', -- support_emergency_phone2
  '(251) 382-1197', -- support_fax
  -- Mailing address
  'AO Industries, Inc.', -- support_mailing_address1
  '7262 Bull Pen Cir', -- support_mailing_address2
  'Mobile, AL 36695', -- support_mailing_address3
  null, -- support_mailing_address4
  -- Language control
  true, -- english_enabled
  true, -- japanese_enabled
  -- aoweb-struts settings
  'http://localhost:11156/aoweb/', -- aoweb_struts_http_url_base
  'https://localhost:11257/aoweb/', -- aoweb_struts_https_url_base
  'LkZ4Gi54ofbw9ghm320JHKcrYlGf4SzIzMa7geNmcbM=', -- aoweb_struts_google_verify_content
  false, -- aoweb_struts_noindex
  'UA-8801760-3', -- aoweb_struts_google_analytics_new_tracking_code
  'support@aoindustries.com', -- aoweb_struts_signup_admin_address
  4, -- aoweb_struts_vnc_bind
  'PKCS12', -- aoweb_struts_keystore_type
  '9FleckAbay9' -- aoweb_struts_keystore_password
);
commit;
