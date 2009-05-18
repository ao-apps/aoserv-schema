create unique index brands_smtp_uni on brands (
    smtp_linux_server_account
);
create unique index brands_imap_uni on brands (
    imap_linux_server_account
);
create unique index brands_support_email_address_uni on brands (
    support_email_address
);
create unique index brands_support_email_display_uni on brands (
    support_email_display
);
create unique index brands_signup_email_address_uni on brands (
    signup_email_address
);
create unique index brands_signup_email_display_uni on brands (
    signup_email_display
);
create unique index brands_aoweb_struts_http_url_base_uni on brands (
    aoweb_struts_http_url_base
);
create unique index brands_aoweb_struts_https_url_base_uni on brands (
    aoweb_struts_https_url_base
);
create unique index brands_aoweb_struts_google_verify_content_uni on brands (
    aoweb_struts_google_verify_content
);
create unique index brands_aoweb_struts_google_analytics_new_tracking_code_uni on brands (
    aoweb_struts_google_analytics_new_tracking_code
);
create index brands_ticket_encryption_from_idx on brands (
    ticket_encryption_from
);
create index brands_ticket_encryption_recipient_idx on brands (
    ticket_encryption_recipient
);
create index brands_signup_encryption_from_idx on brands (
    signup_encryption_from
);
create index brands_signup_encryption_recipient_idx on brands (
    signup_encryption_recipient
);
