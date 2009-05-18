create unique index ticket_assignments_uni on ticket_assignments (
  ticket,
  reseller
);
create index ticket_assignments_reseller_idx on ticket_assignments (
  reseller
);
create index ticket_assignments_administrator_idx on ticket_assignments (
  administrator
);
