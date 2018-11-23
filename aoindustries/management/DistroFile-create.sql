create sequence         management."DistroFile_pkey_seq" cycle;
grant all            on management."DistroFile_pkey_seq" to aoadmin;
grant select, update on management."DistroFile_pkey_seq" to aoserv_app;

create table management."DistroFile" (
  pkey integer
    default nextval('management."DistroFile_pkey_seq"')
    primary key,
  operating_system_version integer
    not null,
  "path" text
    not null,
  optional boolean
    not null,
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
grant all    on management."DistroFile" to aoadmin;
grant select on management."DistroFile" to aoserv_app;
