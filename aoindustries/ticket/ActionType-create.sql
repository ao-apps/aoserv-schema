-- TODO: sinceVersion and lastVersion here, too.  Filter actions of types unknown to client version?
create table ticket."ActionType" (
  "type" text
    primary key,
  visible_admin_only boolean
    not null
);
grant all    on ticket."ActionType" to aoadmin;
grant select on ticket."ActionType" to aoserv_app;
