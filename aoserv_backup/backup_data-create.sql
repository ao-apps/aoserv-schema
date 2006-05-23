create sequence backup_data_pkey_seq cycle;
grant all on backup_data_pkey_seq to aoadmin;
grant select, update on backup_data_pkey_seq to aoserv_app;

create table backup_data (
  pkey integer
    default nextval('backup_data_pkey_seq')
    constraint backup_data_pkey primary key,
  created timestamp
    not null,
  backup_partition int
    not null,
  data_size int8
    not null,
  compressed_size int8,
  md5_hi int8
    not null,
  md5_lo int8
    not null,
  is_stored bool
    not null
);
grant all on backup_data to aoadmin;
grant select, update, insert, delete on backup_data to aoserv_app;
