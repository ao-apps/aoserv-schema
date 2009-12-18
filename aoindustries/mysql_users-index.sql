create unique index mysql_users_uni on mysql_users (
  mysql_server,
  username
);
create index mysql_users_username_idx on mysql_users (
  username
);
create index mysql_users_disable_log_idx on mysql_users (
  disable_log
);
