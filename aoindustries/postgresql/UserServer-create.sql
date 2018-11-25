create sequence         postgresql."UserServer_pkey_seq" cycle;
grant all            on postgresql."UserServer_pkey_seq" to aoadmin;
grant select, update on postgresql."UserServer_pkey_seq" to aoserv_app;

create table postgresql."UserServer" (
  pkey integer
    default nextval('postgresql."UserServer_pkey_seq"')
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
