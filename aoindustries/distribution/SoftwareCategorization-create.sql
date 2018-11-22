create sequence distribution."SoftwareCategorization_pkey_seq" cycle;
grant all    on distribution."SoftwareCategorization_pkey_seq" to aoadmin;
grant select on distribution."SoftwareCategorization_pkey_seq" to aoserv_app;

create table distribution."SoftwareCategorization" (
  pkey integer
    default nextval('distribution."SoftwareCategorization_pkey_seq"')
    primary key,
  "name" text
    not null,
  "class" text
    not null,
  unique("name", "class")
);
grant all    on distribution."SoftwareCategorization" to aoadmin;
grant select on distribution."SoftwareCategorization" to aoserv_app;
