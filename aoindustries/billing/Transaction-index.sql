create index "Transaction_accounting_fkey" on billing."Transaction" (
  accounting
);
create index "Transaction_source_accounting_fkey" on billing."Transaction" (
  source_accounting
);
create index "Transaction_username_fkey" on billing."Transaction" (
  username
);
create index "Transaction_type_fkey" on billing."Transaction" (
  "type"
);
create index "Transaction_rate.currency_fkey" on billing."Transaction" (
  "rate.currency"
);
create index "Transaction_payment_type_fkey" on billing."Transaction" (
  payment_type
);
create index "Transaction_processor_fkey" on billing."Transaction" (
  processor
);
create index "Transaction_credit_card_transaction_fkey" on billing."Transaction" (
  credit_card_transaction
);
