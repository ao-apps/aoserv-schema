create table ticket."Category" (
  pkey integer
    primary key,
  parent integer, -- top-level categories have null parents
  "name" text not null
    check (
        ("name" not like '%.%') -- For properties files or ". path"
        and ("name" not like '%/%') -- For "/ path"
    )
);
grant all    on ticket."Category" to aoadmin;
grant select on ticket."Category" to aoserv_app;
