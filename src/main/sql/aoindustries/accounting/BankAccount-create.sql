create table accounting."BankAccount" (
  "name" text
    primary key,
  display text
    not null,
  bank text
    not null,
  "depositDelay" integer
    not null,
  "withdrawalDelay" integer
    not null
);
grant all    on accounting."BankAccount" to aoadmin;
grant select on accounting."BankAccount" to accounting;
