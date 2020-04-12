create table billing."Currency" (
  "currencyCode" char(3)
    primary key,
  "fractionDigits" smallint not null
    check ("fractionDigits" >= 0),
  "autoEnableMinimumPayment" numeric not null
    check ("autoEnableMinimumPayment" >= 0)
);
grant all    on billing."Currency" to aoadmin;
grant select on billing."Currency" to aoserv_app;
