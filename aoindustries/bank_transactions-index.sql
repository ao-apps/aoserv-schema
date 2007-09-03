create index bank_transactions_bank_account_idx on bank_transactions (
  bank_account
);
create index bank_transactions_processor_idx on bank_transactions (
  processor
);
create index bank_transactions_type_idx on bank_transactions (
  "type"
);
create index bank_transactions_expense_code_idx on bank_transactions (
  expense_code
);
