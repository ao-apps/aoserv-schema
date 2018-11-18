create index "BankTransaction_account_idx" on accounting."BankTransaction" (
  account
);
create index "BankTransaction_processor_idx" on accounting."BankTransaction" (
  processor
);
create index "BankTransaction_type_idx" on accounting."BankTransaction" (
  "type"
);
create index "BankTransaction_expenseCategory_idx" on accounting."BankTransaction" (
  "expenseCategory"
);
