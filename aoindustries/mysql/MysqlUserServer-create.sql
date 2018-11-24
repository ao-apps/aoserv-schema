create sequence         mysql."MysqlUserServer_pkey_seq" cycle;
grant all            on mysql."MysqlUserServer_pkey_seq" to aoadmin;
grant select, update on mysql."MysqlUserServer_pkey_seq" to aoserv_app;

create table mysql."MysqlUserServer" (
  pkey integer
    default nextval('mysql."MysqlUserServer_pkey_seq"')
    primary key,
  username text
    not null,
  mysql_server integer
    not null,
  "host" text,
  disable_log integer,
  predisable_password text,
  max_questions integer
    not null
        constraint max_questions_chk
      check (max_questions>=0)
    default 0,
  max_updates integer
    not null
    constraint max_updates_chk
      check (max_updates>=0)
    default 0,
  max_connections integer
    not null
    constraint max_connections_chk
      check (max_connections>=0)
    default 0,
  max_user_connections integer
    not null
    constraint max_user_connections_chk
      check (max_user_connections>=0)
    default 0,
  unique (mysql_server, username)
);
grant all                            on mysql."MysqlUserServer" to aoadmin;
grant select, insert, update, delete on mysql."MysqlUserServer" to aoserv_app;