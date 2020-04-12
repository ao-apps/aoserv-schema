create table billing."TransactionType" (
  "name" text
    primary key,
  is_credit boolean
    not null
);
grant all    on billing."TransactionType" to aoadmin;
grant select on billing."TransactionType" to aoserv_app;
