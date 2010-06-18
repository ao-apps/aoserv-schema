create index transactions_accounting_ind on transactions (
  accounting
);
create index transactions_source_accounting_ind on transactions (
  source_accounting
);
create index transactions_username_ind on transactions (
  username
);
create index transactions_type_ind on transactions (
  "type"
);
create index transactions_currency_ind on transactions (
  currency
);
create index transactions_payment_type_ind on transactions (
  payment_type
);
create index transactions_processor_ind on transactions (
  processor
);
create unique index transactions_credit_card_transaction_uni on transactions (
  credit_card_transaction
);
