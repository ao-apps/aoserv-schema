create unique index "CreditCard_uni" on payment."CreditCard" (
  processor_id,
  provider_unique_id
);
create index "CreditCard_accounting_fkey" on payment."CreditCard" (
  accounting
);
create index "CreditCard_country_code_fkey" on payment."CreditCard" (
  country_code
);
create index "CreditCard_created_by_fkey" on payment."CreditCard" (
  created_by
);
create index "CreditCard_encryption_card_number_from_fkey" on payment."CreditCard" (
  encryption_card_number_from
);
create index "CreditCard_encryption_card_number_recipient_fkey" on payment."CreditCard" (
  encryption_card_number_recipient
);
create index "CreditCard_encryption_expiration_from_fkey" on payment."CreditCard" (
  encryption_expiration_from
);
create index "CreditCard_expiration_recipient_fkey" on payment."CreditCard" (
  encryption_expiration_recipient
);
