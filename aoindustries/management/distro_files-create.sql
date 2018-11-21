create sequence distro_files_pkey_seq cycle;
grant all            on distro_files_pkey_seq to aoadmin;
grant select, update on distro_files_pkey_seq to aoserv_app;

create table distro_files (
  pkey integer
    default nextval('distro_files_pkey_seq')
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
grant all    on distro_files to aoadmin;
grant select on distro_files to aoserv_app;
