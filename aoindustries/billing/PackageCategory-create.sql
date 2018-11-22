create table billing."PackageCategory" (
  "name" text
    primary key
);
grant all    on billing."PackageCategory" to aoadmin;
grant select on billing."PackageCategory" to aoserv_app;
