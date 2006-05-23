create sequence file_backup_devices_pkey_seq cycle;
grant all on file_backup_devices_pkey_seq to aoadmin;
grant select, update on file_backup_devices_pkey_seq to aoserv_app;

create table file_backup_devices (
  pkey smallint
    default nextval('file_backup_devices_pkey_seq')
    constraint file_backup_devices_pkey primary key,
  device int8
    not null
    unique,
  can_backup bool
    not null,
  description text
    not null
);
grant all on file_backup_devices to aoadmin;
grant select, insert on file_backup_devices to aoserv_app;
