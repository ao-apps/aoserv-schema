create table accounting."BankTransactionType" (
  "name" text
    primary key,
  display text
    not null,
  description text
    not null,
  "isNegative" boolean
    not null
);
grant all    on accounting."BankTransactionType" to aoadmin;
grant select on accounting."BankTransactionType" to aoserv_app;
