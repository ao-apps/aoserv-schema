create index sendmail_binds_sendmail_server_idx on sendmail_binds (
  sendmail_server
);
create unique index sendmail_name_uni on sendmail_binds (
  sendmail_server,
  "name"
) where "name" is not null;
