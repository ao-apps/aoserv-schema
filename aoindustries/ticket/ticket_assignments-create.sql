create sequence         ticket.ticket_assignments_pkey_seq cycle;
grant all            on ticket.ticket_assignments_pkey_seq to aoadmin;
grant select, update on ticket.ticket_assignments_pkey_seq to aoserv_app;

create table ticket_assignments (
  pkey integer default nextval('ticket.ticket_assignments_pkey_seq') primary key,
  ticket integer not null,
  reseller text not null,
  administrator text not null -- This MUST be a business_administrator in the same accounting as reseller or the ticket may be lost - how to enforce in PostgreSQL?
);
grant all            on ticket_assignments to aoadmin;
grant select, insert on ticket_assignments to aoserv_app;
