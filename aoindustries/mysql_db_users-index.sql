create unique index mysql_db_users_uni on mysql_db_users (
  mysql_database,
  mysql_user
);
create index mysql_db_users_mysql_user_idx on mysql_db_users (
  mysql_user
);
