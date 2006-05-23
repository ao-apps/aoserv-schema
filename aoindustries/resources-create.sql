create table resources (
  name text
    constraint resources_pkey primary key,
  singular_display_unit text
    not null,
  plural_display_unit text
    not null,
  per_unit text
    not null,
  description text
    not null
);
grant all on resources to aoadmin;
grant select on resources to aoserv_app;
