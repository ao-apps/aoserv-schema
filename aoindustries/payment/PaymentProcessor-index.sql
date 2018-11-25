create index "PaymentProcessor_accounting_fkey" on payment."PaymentProcessor" (
  accounting
);
create index "PaymentProcessor_encryption_from_fkey" on payment."PaymentProcessor" (
  encryption_from
);
create index "PaymentProcessor_encryption_recipient_fkey" on payment."PaymentProcessor" (
  encryption_recipient
);
