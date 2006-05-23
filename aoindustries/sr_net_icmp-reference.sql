alter table sr_net_icmp
  add constraint server_reports_fkey
  foreign key (server_report)
  references server_reports (pkey)
  on update cascade
  on delete cascade
;
