create table email_inboxes (
  linux_account integer primary key,
  linux_account_type text not null check (linux_account_type in ('shell_account', 'email_inbox')), -- Used as hidden reference to linux_accounts only
  autoresponder_from integer,
  autoresponder_subject text,
  autoresponder_path text,
  is_autoresponder_enabled bool not null,
  use_inbox bool not null,
  trash_email_retention smallint,
  junk_email_retention smallint,
  sa_integration_mode text not null,
  sa_required_score float4 not null,
  sa_discard_score smallint check (sa_discard_score is null or sa_discard_score>0)
);
grant all on email_inboxes to aoadmin;
grant select, insert, update, delete on email_inboxes to aoserv_app;
