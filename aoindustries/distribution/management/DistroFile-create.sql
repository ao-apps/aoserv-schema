create sequence         "distribution.management"."DistroFile_id_seq" cycle;
grant all            on "distribution.management"."DistroFile_id_seq" to aoadmin;
grant select, update on "distribution.management"."DistroFile_id_seq" to aoserv_app;

create table "distribution.management"."DistroFile" (
  id integer
    default nextval('"distribution.management"."DistroFile_id_seq"')
    primary key,
  operating_system_version integer
    not null,
  "path" text
    not null,
  optional boolean
    not null,
  -- TODO: Convert to enum both PostgreSQL and Java
  "type" text
    not null,
  mode bigint
    not null,
  linux_account text
    not null,
  linux_group text
    not null,
  "size" bigint,
  file_sha256_0 bigint,
  file_sha256_1 bigint,
  file_sha256_2 bigint,
  file_sha256_3 bigint,
  symlink_target text,
  unique("path", operating_system_version)
);
grant all    on "distribution.management"."DistroFile" to aoadmin;
grant select on "distribution.management"."DistroFile" to aoserv_app;
