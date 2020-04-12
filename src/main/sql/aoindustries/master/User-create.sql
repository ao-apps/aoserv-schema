-- TODO: aoserv_roles from aortd are a better approach - more manageable
create table master."User" (
  username text
    primary key,
  is_active boolean
    default true
    not null,
  can_access_accounting boolean
    default false
    not null,
  can_access_bank_account boolean
    default false
    not null,
  can_invalidate_tables boolean
    default false
    not null,
  can_access_admin_web boolean
    default false
    not null,
  is_dns_admin boolean
    default false
    not null,
  is_router boolean
    default false
    not null,
  is_cluster_admin boolean
    default false
    not null
);
grant all    on master."User" to aoadmin;
grant select on master."User" to aoserv_app;
grant select on master."User" to accounting;
grant insert on master."User" to management; -- TODO: For aoserv-daemon users only - trigger/view to enforce?
