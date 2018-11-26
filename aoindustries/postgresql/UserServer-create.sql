create sequence         postgresql."UserServer_id_seq" cycle;
grant all            on postgresql."UserServer_id_seq" to aoadmin;
grant select, update on postgresql."UserServer_id_seq" to aoserv_app;

create table postgresql."UserServer" (
  id integer
    default nextval('postgresql."UserServer_id_seq"')
    primary key,
  username text
    not null,
  postgres_server integer
    not null,
  disable_log integer,
  predisable_password text,
  unique (username, postgres_server)
);
grant all                            on postgresql."UserServer" to aoadmin;
grant select, insert, update, delete on postgresql."UserServer" to aoserv_app;
