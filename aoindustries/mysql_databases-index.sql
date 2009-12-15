create unique index mysql_databases_uni on mysql_databases (
  mysql_server,
  "name"
);
create index mysql_databases_accounting_idx on mysql_databases (
  accounting
);
