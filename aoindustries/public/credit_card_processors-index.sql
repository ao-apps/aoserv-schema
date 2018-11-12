create index credit_card_processors_accounting_idx on credit_card_processors (
  accounting
);
create index credit_card_processors_encryption_from_idx on credit_card_processors (
  encryption_from
);
create index credit_card_processors_encryption_recipient_idx on credit_card_processors (
  encryption_recipient
);
