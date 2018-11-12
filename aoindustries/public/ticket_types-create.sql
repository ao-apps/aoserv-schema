create table ticket_types (
  type text primary key
);
grant all    on ticket_types to aoadmin;
grant select on ticket_types to aoserv_app;
