create unique index mysql_databases_uni on mysql_databases (
  "name",
  mysql_server
);
create unique index mysql_databases_ao_server_super on mysql_databases (
  ao_server,
  ao_server_resource
);
create index mysql_databases_ao_server_idx on mysql_databases (
  ao_server,
  mysql_server
);
create unique index mysql_databases_super on mysql_databases (
  mysql_server,
  ao_server_resource
);
