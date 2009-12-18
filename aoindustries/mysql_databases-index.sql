create unique index mysql_databases_uni on mysql_databases (
  "name",
  mysql_server
);
create index mysql_databases_accounting_idx on mysql_databases (
  accounting
);
-- This superkey is used by mysql_db_users to ensure database and user are in the same mysql_server
create unique index mysql_databases_super on mysql_databases (
  mysql_server,
  pkey
);
