-- TODO: sinceVersion and lastVersion here, too.  Filter actions of types unknown to client version?
create table ticket_action_types (
  "type" text
    primary key,
  visible_admin_only boolean
    not null
);
grant all            on ticket_action_types to aoadmin;
grant select, update on ticket_action_types to aoserv_app;
