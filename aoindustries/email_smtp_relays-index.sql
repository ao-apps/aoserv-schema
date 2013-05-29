create index email_smtp_relays_package_ind on email_smtp_relays (
  package
);
create index email_smtp_relays_server_ind on email_smtp_relays (
  ao_server
);
create index email_smtp_relays_type_idx on email_smtp_relays (
  "type"
);
create index email_smtp_relays_disable_log_idx on email_smtp_relays (
  disable_log
);
