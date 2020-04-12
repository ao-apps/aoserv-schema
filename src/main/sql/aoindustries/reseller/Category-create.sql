create table reseller."Category" (
  id integer
    primary key,
  parent integer, -- top-level categories have null parents
  "name" text not null
    check (
        ("name" not like '%.%') -- For properties files or ". path"
        and ("name" not like '%/%') -- For "/ path"
    )
);
grant all    on reseller."Category" to aoadmin;
grant select on reseller."Category" to aoserv_app;
