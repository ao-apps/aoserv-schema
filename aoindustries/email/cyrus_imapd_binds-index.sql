create index cyrus_imapd_binds_cyrus_imapd_server_idx on cyrus_imapd_binds (
  cyrus_imapd_server
);
create index cyrus_imapd_binds_certificate_idx on cyrus_imapd_binds (
  certificate
);
