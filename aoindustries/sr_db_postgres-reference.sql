alter table sr_db_postgres
  add constraint sever_report_fkey
  foreign key (server_report)
  references server_reports (pkey)
  on update cascade
  on delete cascade
;
