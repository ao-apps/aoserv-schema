create sequence file_backup_stats_pkey_seq cycle;
grant all on file_backup_stats_pkey_seq to aoadmin;
grant select, update on file_backup_stats_pkey_seq to aoserv_app;

create table file_backup_stats (
  pkey integer
    default nextval('file_backup_stats_pkey_seq')
    constraint file_backup_stats_pkey primary key,
  server integer
    not null,
  start_time timestamp
    not null,
  end_time timestamp
    not null,
  scanned integer
    not null,
  file_backup_attribute_matches integer
    not null,
  not_matched_md5_files integer
    not null,
  not_matched_md5_failures integer
    not null,
  send_missing_backup_data_files integer
    not null,
  send_missing_backup_data_failures integer
    not null,
  temp_files integer
    not null,
  temp_send_backup_data_files integer
    not null,
  temp_failures integer
    not null,
  added integer
    not null,
  deleted integer
    not null,
  is_successful bool
    not null
);
grant all on file_backup_stats to aoadmin;
grant select, insert on file_backup_stats to aoserv_app;
