create index "BankTransaction_account_fkey" on accounting."BankTransaction" (
  account
);
create index "BankTransaction_processor_fkey" on accounting."BankTransaction" (
  processor
);
create index "BankTransaction_administrator_fkey" on accounting."BankTransaction" (
  administrator
);
create index "BankTransaction_type_fkey" on accounting."BankTransaction" (
  "type"
);
create index "BankTransaction_expenseCategory_fkey" on accounting."BankTransaction" (
  "expenseCategory"
);
