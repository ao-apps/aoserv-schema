create table ticket_priorities (
  priority     text       not null
                          constraint ticket_priorities_pkey primary key
);
grant all on ticket_priorities to aoadmin;
grant select, update on ticket_priorities to aoserv_app;
