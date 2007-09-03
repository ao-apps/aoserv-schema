create index tickets_accounting_idx on tickets (
  accounting
);
create index tickets_created_by_idx on tickets (
  created_by
);
create index tickets_ticket_type_idx on tickets (
  ticket_type
);
create index tickets_client_priority_idx on tickets (
  client_priority
);
create index tickets_admin_priority_idx on tickets (
  admin_priority
);
create index tickets_technology_idx on tickets (
  technology
);
create index tickets_status_idx on tickets (
  status
);
create index tickets_assigned_to_idx on tickets (
  assigned_to
);
