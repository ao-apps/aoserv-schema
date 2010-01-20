create table ticket_statuses (
  status text primary key,
  sort_order smallint not null unique
);
grant all on ticket_statuses to aoadmin;
grant select on ticket_statuses to aoserv_app;
