create table distribution."SoftwareCategory" (
  "name" text
    primary key,
  description text
    not null
);
grant all    on distribution."SoftwareCategory" to aoadmin;
grant select on distribution."SoftwareCategory" to aoserv_app;
