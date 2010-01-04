create unique index email_inboxes_linux_account_type_super on email_inboxes (
  linux_account_type,
  linux_account
);
create unique index email_inboxes_autoresponder_from_uni on email_inboxes (
  autoresponder_from
);
create index email_inboxes_trash_email_retention_idx on email_inboxes (
  trash_email_retention
);
create index email_inboxes_junk_email_retention_idx on email_inboxes (
  junk_email_retention
);
create index email_inboxes_sa_integration_mode_idx on email_inboxes (
  sa_integration_mode
);
