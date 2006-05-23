alter table sr_cpu
  add constraint server_report_fkey
  foreign key (server_report)
  references server_reports (pkey)
  on update cascade
  on delete cascade
;
