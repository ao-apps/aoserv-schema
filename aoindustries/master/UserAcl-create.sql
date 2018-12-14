create sequence         master."UserAcl_id_seq" cycle;
grant all            on master."UserAcl_id_seq" to aoadmin;
grant select         on master."UserAcl_id_seq" to aoserv_app;
grant select, update on master."UserAcl_id_seq" to management; -- For aoserv-daemon users only

/*
TODO: When a User has no hosts, it is allowed to connect from anywhere.
While convenient, this might be too easy to make a configuration mistake.
Instead, support network ranges (cidr), and allow "0.0.0.0/32" and "::/128".
Then grant only when a match is found, and deny when none found.
 */
-- TODO: Move to "account" and rename to "AdministratorAcl"?  This would allow this restriction for any user.
-- TODO: This restriction could also be enforced at higher levels, like aoweb/aoweb-struts.
-- TOOD: Or, is there any benefit to having a separatation of Administrator and ApiUser?
create table master."UserAcl" (
  id integer
    default nextval('master."UserAcl_id_seq"')
    primary key,
  username text
    not null,
  "host" text
    not null,
  unique(username, "host")
);
grant all    on master."UserAcl" to aoadmin;
grant select on master."UserAcl" to aoserv_app;
grant insert on master."UserAcl" to management; -- TODO: For aoserv-daemon users only - trigger/view to enforce?
