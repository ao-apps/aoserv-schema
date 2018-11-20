create unique index backup_reports_uni on backup_reports (date, server, package);
create index backup_reports_package_date_ind on backup_reports (package, date);
create index backup_reports_server_ind on backup_reports (server);
