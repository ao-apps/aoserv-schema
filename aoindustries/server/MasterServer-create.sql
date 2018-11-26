create sequence         server."MasterServer_id_seq" cycle;
grant all            on server."MasterServer_id_seq" to aoadmin;
grant select, update on server."MasterServer_id_seq" to aoserv_app;

/*
TODO: When a master.User has no server.Server listed, it is considered a
superuser with access to all server.Server and all data.  While this is clever, it
is clever in the way a SQL DELETE will remove all data when you forget the
WHERE clause.  This is too risky.  Find a better way, roles or another flag
in master.User.
 */
create table server."MasterServer" (
  id integer
    default nextval('server."MasterServer_id_seq"')
    primary key,
  username text
    not null,
  server integer
    not null,
  unique(username, server)
);
grant all            on server."MasterServer" to aoadmin;
-- TODO: Is insert required?
grant select, insert on server."MasterServer" to aoserv_app;
