create table distro_report_types (
  "name" text
    primary key,
  display text
    not null
);
grant all    on distro_report_types to aoadmin;
grant select on distro_report_types to aoserv_app;
