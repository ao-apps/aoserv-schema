create table ticket_action_types (
  "type" text constraint ticket_action_types_pkey primary key,
  visible_admin_only bool not null
);
grant all on ticket_action_types to aoadmin;
grant select on ticket_action_types to aoserv_app;
