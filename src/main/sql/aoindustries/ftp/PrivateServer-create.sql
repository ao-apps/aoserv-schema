create table ftp."PrivateServer" (
  net_bind integer
    primary key,
  root text
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  logfile "com.aoindustries.net"."Path"
    not null,
  hostname "com.aoindustries.net"."DomainName"
    not null,
  email "com.aoindustries.net"."Email"
    not null,
  created timestamp with time zone
    default now()
    not null,
  linux_server_account integer
    not null,
  allow_anonymous boolean
    not null
);
grant all            on ftp."PrivateServer" to aoadmin;
grant select, delete on ftp."PrivateServer" to aoserv_app;
