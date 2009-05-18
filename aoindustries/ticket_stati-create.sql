create table ticket_stati (
  status text primary key,
  sort_order smallint not null unique
);
grant all on ticket_stati to aoadmin;
grant select on ticket_stati to aoserv_app;
