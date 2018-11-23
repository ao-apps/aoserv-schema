create sequence         server.master_servers_pkey_seq cycle;
grant all            on server.master_servers_pkey_seq to aoadmin;
grant select, update on server.master_servers_pkey_seq to aoserv_app;

/*
TODO: When a master.MasterUser has no servers listed, it is considered a
superuser with access to all servers and all data.  While this is clever, it
is clever in the way a SQL DELETE will remove all data when you forget the
WHERE clause.  This is too risky.  Find a better way, roles or another flag
in master.MasterUser.
 */
create table master_servers (
  pkey integer
    default nextval('server.master_servers_pkey_seq')
    primary key,
  username text
    not null,
  server integer
    not null,
  unique(username, server)
);
grant all            on master_servers to aoadmin;
grant select, insert on master_servers to aoserv_app;
