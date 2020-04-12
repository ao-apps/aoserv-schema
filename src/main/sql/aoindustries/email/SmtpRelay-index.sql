create index "SmtpRelay_server_fkey" on email."SmtpRelay" (
  ao_server
);
create index "SmtpRelay_type_fkey" on email."SmtpRelay" (
  "type"
);
create index "SmtpRelay_disable_log_fkey" on email."SmtpRelay" (
  disable_log
);
