create index "Ticket_brand_fkey" on ticket."Ticket" (
  brand
);
create index "Ticket_reseller_fkey" on ticket."Ticket" (
  reseller
);
create index "Ticket_accounting_fkey" on ticket."Ticket" (
  accounting
);
create index "Ticket_language_fkey" on ticket."Ticket" (
  language
);
create index "Ticket_created_by_fkey" on ticket."Ticket" (
  created_by
);
create index "Ticket_category_fkey" on ticket."Ticket" (
  category
);
create index "Ticket_ticket_type_fkey" on ticket."Ticket" (
  ticket_type
);
create index "Ticket_client_priority_fkey" on ticket."Ticket" (
  client_priority
);
create index "Ticket_admin_priority_fkey" on ticket."Ticket" (
  admin_priority
);
create index "Ticket_status_fkey" on ticket."Ticket" (
  status
);
