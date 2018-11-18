create table accounting."ExpenseCategory" (
  "name" text
    primary key
);
grant all    on accounting."ExpenseCategory" to aoadmin;
grant select on accounting."ExpenseCategory" to aoserv_app;
