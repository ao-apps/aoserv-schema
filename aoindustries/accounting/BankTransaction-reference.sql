alter table accounting."BankTransaction"
  add constraint account_fkey
  foreign key (account)
  references accounting."BankAccount" ("name")
  on delete restrict
  on update cascade
;
alter table accounting."BankTransaction"
  add constraint processor_fkey
  foreign key (processor)
  references payment."PaymentProcessor" (provider_id)
  on delete restrict
  on update cascade
;
alter table accounting."BankTransaction"
  add constraint administrator_fkey
  foreign key (administrator)
  references master."User" (username)
  on delete restrict
  on update cascade
;
alter table accounting."BankTransaction"
  add constraint type_fkey
  foreign key ("type")
  references accounting."BankTransactionType" ("name")
  on delete restrict
  on update cascade
;
alter table accounting."BankTransaction"
  add constraint "expenseCategory_fkey"
  foreign key ("expenseCategory")
  references accounting."ExpenseCategory" ("name")
  on delete restrict
  on update cascade
;
