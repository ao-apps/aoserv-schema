create unique index mysql_users_uni on mysql_users (
  username,
  mysql_server
);
create index mysql_users_disable_log_idx on mysql_users (
  disable_log
);
-- This superkey is used by mysql_db_users to ensure database and user are in the same mysql_server
create unique index mysql_users_super on mysql_users (
  mysql_server,
  pkey
);
