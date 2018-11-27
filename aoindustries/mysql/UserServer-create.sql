create sequence         mysql."UserServer_id_seq" cycle;
grant all            on mysql."UserServer_id_seq" to aoadmin;
grant select, update on mysql."UserServer_id_seq" to aoserv_app;
grant select, update on mysql."UserServer_id_seq" to management;

create table mysql."UserServer" (
  id integer
    default nextval('mysql."UserServer_id_seq"')
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
grant all                            on mysql."UserServer" to aoadmin;
grant select, insert, update, delete on mysql."UserServer" to aoserv_app;
grant select, insert                 on mysql."UserServer" to management;
