create index "SendmailBind_sendmail_server_fkey" on email."SendmailBind" (
  sendmail_server
);
create unique index "SendmailBind_name_uni" on email."SendmailBind" (
  sendmail_server,
  "name"
) where "name" is not null;
