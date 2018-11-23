create table management."DistroFileType" (
  "type" text
    primary key,
  description text
    not null
);
grant all    on management."DistroFileType" to aoadmin;
grant select on management."DistroFileType" to aoserv_app;
