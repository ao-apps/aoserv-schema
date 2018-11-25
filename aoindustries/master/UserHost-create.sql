create sequence master."UserHost_pkey_seq" cycle;
grant all    on master."UserHost_pkey_seq" to aoadmin;
grant select on master."UserHost_pkey_seq" to aoserv_app;

/*
TODO: When a User has no hosts, it is allowed to connect from anywhere.
While convenient, this might be too easy to make a configuration mistake.
Instead, support network ranges (cidr), and allow "0.0.0.0/32" and "::/128".
Then grant only when a match is found, and deny when none found.
 */
create table master."UserHost" (
  pkey integer
    default nextval('master."UserHost_pkey_seq"')
    primary key,
  username text
    not null,
  "host" text
    not null,
  unique(username, "host")
);
grant all    on master."UserHost" to aoadmin;
grant select on master."UserHost" to aoserv_app;
