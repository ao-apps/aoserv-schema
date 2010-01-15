create sequence ticket_assignments_pkey_seq cycle;
grant all on ticket_assignments_pkey_seq to aoadmin;
grant select, update on ticket_assignments_pkey_seq to aoserv_app;

create table ticket_assignments (
  pkey integer default nextval('ticket_assignments_pkey_seq') primary key,
  ticket integer not null,
  reseller text not null,
  administrator text not null,
  administrator_accounting text not null, -- Used as internal reference to business_administrators only
  check (reseller=administrator_accounting)
);
grant all on ticket_assignments to aoadmin;
grant select, insert on ticket_assignments to aoserv_app;
