create index "Processor_accounting_fkey" on payment."Processor" (
  accounting
);
create index "Processor_encryption_from_fkey" on payment."Processor" (
  encryption_from
);
create index "Processor_encryption_recipient_fkey" on payment."Processor" (
  encryption_recipient
);
