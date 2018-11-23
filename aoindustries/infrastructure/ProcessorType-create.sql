create table infrastructure."ProcessorType" (
  "type" text
    primary key,
  sort_order smallint
    not null
    unique
);
grant all    on infrastructure."ProcessorType" to aoadmin;
grant select on infrastructure."ProcessorType" to aoserv_app;
