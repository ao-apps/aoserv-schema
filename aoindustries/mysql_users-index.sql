create unique index mysql_users_uni on mysql_users (
  username,
  mysql_server
);
create unique index mysql_users_accounting_super on mysql_users (
  accounting,
  ao_server_resource
);
create index mysql_users_accounting_idx on mysql_users (
  accounting,
  username
);
create unique index mysql_users_ao_server_super on mysql_users (
  ao_server,
  ao_server_resource
);
create index mysql_users_ao_server_idx on mysql_users (
  ao_server,
  mysql_server
);
create unique index mysql_users_super on mysql_users (
  mysql_server,
  ao_server_resource
);
