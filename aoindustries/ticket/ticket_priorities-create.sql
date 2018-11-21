create table ticket_priorities (
  priority text
    primary key
);
grant all            on ticket_priorities to aoadmin;
-- TODO: Why update here? PostgreSQL used to require update on foreign key referenced tables?
grant select, update on ticket_priorities to aoserv_app;
