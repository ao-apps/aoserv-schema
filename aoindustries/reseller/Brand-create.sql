create table reseller."Brand" (
  accounting text primary key,
  -- Name server settings
  nameserver1 text not null,
  nameserver2 text not null,
  nameserver3 text,
  nameserver4 text,
  check (nameserver4 is null or nameserver3 is not null), -- Must fill in order
  -- Email settings
  smtp_linux_server_account integer not null,
  smtp_host text,
  smtp_password text not null,
  imap_linux_server_account integer not null,
  imap_host text,
  imap_password text not null,
  support_email_address integer not null,
  support_email_display text not null,
  signup_email_address integer not null,
  signup_email_display text not null,
  -- Ticket encryption settings
  ticket_encryption_from integer not null,
  ticket_encryption_recipient integer not null,
  check (not ticket_encryption_from=ticket_encryption_recipient),
  -- Signup encryption settings
  signup_encryption_from integer not null,
  signup_encryption_recipient integer not null,
  check (not signup_encryption_from=signup_encryption_recipient),
  -- Telephone contacts
  support_toll_free text,
  support_day_phone text,
  support_emergency_phone1 text,
  support_emergency_phone2 text,
  support_fax text,
  -- Mailing address
  support_mailing_address1 text,
  support_mailing_address2 text,
  support_mailing_address3 text,
  support_mailing_address4 text,
  -- Language control
  english_enabled boolean not null,
  japanese_enabled boolean not null,
  check (english_enabled or japanese_enabled),
  -- aoweb-struts settings
  aoweb_struts_http_url_base text not null,
  aoweb_struts_https_url_base text not null,
  aoweb_struts_google_verify_content text,
  aoweb_struts_noindex boolean not null,
  aoweb_struts_google_analytics_new_tracking_code text,
  aoweb_struts_signup_admin_address text not null, -- Notified for each sign-up
  aoweb_struts_vnc_bind integer not null,
  aoweb_struts_keystore_type text not null,
  aoweb_struts_keystore_password text not null
);
grant all    on reseller."Brand" to aoadmin;
grant select on reseller."Brand" to aoserv_app;
grant select on reseller."Brand" to reseller;
