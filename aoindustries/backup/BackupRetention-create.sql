create table backup."BackupRetention" (
  days smallint
    primary key,
  display text
    not null
);
grant all    on backup."BackupRetention" to aoadmin;
grant select on backup."BackupRetention" to aoserv_app;
