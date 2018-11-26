create sequence distribution."SoftwareCategorization_id_seq" cycle;
grant all    on distribution."SoftwareCategorization_id_seq" to aoadmin;
grant select on distribution."SoftwareCategorization_id_seq" to aoserv_app;

create table distribution."SoftwareCategorization" (
  id integer
    default nextval('distribution."SoftwareCategorization_id_seq"')
    primary key,
  "name" text
    not null,
  "class" text
    not null,
  unique("name", "class")
);
grant all    on distribution."SoftwareCategorization" to aoadmin;
grant select on distribution."SoftwareCategorization" to aoserv_app;
