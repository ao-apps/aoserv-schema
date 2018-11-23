create table management."DistroReportType" (
  "name" text
    primary key,
  display text
    not null
);
grant all    on management."DistroReportType" to aoadmin;
grant select on management."DistroReportType" to aoserv_app;
