create sequence         billing."Transaction_transid_seq" cycle;
grant all            on billing."Transaction_transid_seq" to aoadmin;
grant select, update on billing."Transaction_transid_seq" to aoserv_app;
grant select, update on billing."Transaction_transid_seq" to billing;

create table billing."Transaction" (
  "time" timestamp with time zone
    default now()
    not null,
  transid integer
    default nextval('billing."Transaction_transid_seq"')
    primary key,
  accounting text
    not null,
  source_accounting text
    not null,
  username text
    not null,
  "type" text
    not null,
  description text
    not null,
  quantity numeric(8,3)
    not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  rate numeric(9,2)
    not null,
  payment_type text,
  payment_info text,
  processor text,
  credit_card_transaction integer,
  -- TODO: Make an enum both in PostgreSQL and Java?
  payment_confirmed character(1)
    default 'W'
    not null
    constraint payment_confirmed_chk
      check (payment_confirmed='W' or payment_confirmed='Y' or payment_confirmed='N')
);
grant all                    on billing."Transaction" to aoadmin;
grant select, insert, update on billing."Transaction" to aoserv_app;
grant select                 on billing."Transaction" to accounting;
grant select, insert, update on billing."Transaction" to billing;
