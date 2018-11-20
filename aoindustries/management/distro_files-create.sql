create sequence distro_files_pkey_seq cycle;
grant all            on distro_files_pkey_seq to aoadmin;
grant select, update on distro_files_pkey_seq to aoserv_app;

create table distro_files (
  pkey integer
    default nextval('distro_files_pkey_seq')
    constraint distro_files_pkey primary key,
  operating_system_version integer
    not null,
  "path" text
    not null,
  optional boolean
    not null,
  "type" text
    not null,
  mode int8
    not null,
  linux_account text
    not null,
  linux_group text
    not null,
  "size" int8,
  file_sha256_0 int8,
  file_sha256_1 int8,
  file_sha256_2 int8,
  file_sha256_3 int8,
  symlink_target text,
  unique("path", operating_system_version)
);
grant all    on distro_files to aoadmin;
grant select on distro_files to aoserv_app;