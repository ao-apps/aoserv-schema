create table ticket_priorities (
  priority text primary key
);
grant all on ticket_priorities to aoadmin;
grant select on ticket_priorities to aoserv_app;
