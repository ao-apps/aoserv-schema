create sequence master."MasterHost_pkey_seq" cycle;
grant all    on master."MasterHost_pkey_seq" to aoadmin;
grant select on master."MasterHost_pkey_seq" to aoserv_app;

/*
TODO: When a MasterUser has no hosts, it is allowed to connect from anywhere.
While convenient, this might be too easy to make a configuration mistake.
Instead, support network ranges (cidr), and allow "0.0.0.0/32" and "::/128".
Then grant only when a match is found, and deny when none found.
 */
create table master."MasterHost" (
  pkey integer
    default nextval('master."MasterHost_pkey_seq"')
    primary key,
  username text
    not null,
  "host" text
    not null,
  unique(username, "host")
);
grant all    on master."MasterHost" to aoadmin;
grant select on master."MasterHost" to aoserv_app;
