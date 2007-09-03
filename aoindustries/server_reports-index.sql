create index server_reports_server_ind on server_reports (
  ao_server
);
create index server_reports_failover_server_ind on server_reports (
  failover_server
);
