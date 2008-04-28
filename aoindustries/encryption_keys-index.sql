create unique index encryption_keys_accounting_id_uni on encryption_keys (
  accounting,
  id
);
-- Each business may only have one signup_from
create unique index encryption_keys_signup_from_uni on encryption_keys (accounting) where signup_from;
-- Each business may only have one signup_recipient
create unique index encryption_keys_signup_recipient_uni on encryption_keys (accounting) where signup_recipient;
