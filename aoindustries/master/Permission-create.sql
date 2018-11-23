create table master."Permission" (
  "name" text
    primary key,
  sort_order smallint
    not null
    unique
);
grant all    on master."Permission" to aoadmin;
grant select on master."Permission" to aoserv_app;
