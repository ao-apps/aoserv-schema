create table distro_report_types (
  "name" text
    constraint distro_report_types_pkey primary key,
  display text
    not null
);
grant all on distro_report_types to aoadmin;
grant select on distro_report_types to aoserv_app;
