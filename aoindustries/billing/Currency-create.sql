create table billing."Currency" (
  "currencyCode" text
    primary key
);
grant all    on billing."Currency" to aoadmin;
grant select on billing."Currency" to aoserv_app;
