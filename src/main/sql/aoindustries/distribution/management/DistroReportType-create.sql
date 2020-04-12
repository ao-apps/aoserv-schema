create table "distribution.management"."DistroReportType" (
  "name" text
    primary key,
  display text
    not null
);
grant all    on "distribution.management"."DistroReportType" to aoadmin;
grant select on "distribution.management"."DistroReportType" to aoserv_app;
