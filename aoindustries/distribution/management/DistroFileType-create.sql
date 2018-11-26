create table "distribution.management"."DistroFileType" (
  "type" text
    primary key,
  description text
    not null
);
grant all    on "distribution.management"."DistroFileType" to aoadmin;
grant select on "distribution.management"."DistroFileType" to aoserv_app;
