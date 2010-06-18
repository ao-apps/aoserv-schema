create table backup_retentions (
  days smallint primary key
);
grant all on backup_retentions to aoadmin;
grant select on backup_retentions to aoserv_app;
