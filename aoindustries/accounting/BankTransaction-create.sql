create sequence         accounting."BankTransaction_id_seq" cycle;
grant all            on accounting."BankTransaction_id_seq" to aoadmin;
grant select         on accounting."BankTransaction_id_seq" to aoserv_app;
grant select, update on accounting."BankTransaction_id_seq" to accounting;

create table accounting."BankTransaction" (
  id integer
    default nextval('accounting."BankTransaction_id_seq"')
    primary key,
  "time" timestamp with time zone
    not null,
  account text
    not null
    default 'southtrust',
  processor text,
  administrator text
    not null
    default 'orion',
  "type" text
    not null,
  "expenseCategory" text,
  description text
    not null,
  "checkNo" text,
  amount numeric(9,2)
    not null,
  confirmed boolean
    not null
--  constraint amount_chk
--    check ( case when ( select is_negative from accounting."BankTransactionType" t1 where t1."name"=type )=true then amount<=0 else amount>=0 end )
);

grant all                    on accounting."BankTransaction" to aoadmin;
grant select                 on accounting."BankTransaction" to aoserv_app;
grant select, update, insert on accounting."BankTransaction" to accounting;
