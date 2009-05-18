create table resellers (
  accounting text primary key,
  -- Ticket-specific settings
  ticket_auto_escalate bool not null
);
grant all on resellers to aoadmin;
grant select on resellers to aoserv_app;
