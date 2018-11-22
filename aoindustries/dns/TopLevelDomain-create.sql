create table dns."TopLevelDomain" (
  "domain" text
    primary key,
  description text
    not null
);
grant all    on dns."TopLevelDomain" to aoadmin;
grant select on dns."TopLevelDomain" to aoserv_app;
