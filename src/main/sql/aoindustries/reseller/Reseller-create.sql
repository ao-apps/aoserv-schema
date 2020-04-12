create table reseller."Reseller" (
  accounting text primary key,
  -- Ticket-specific settings
  ticket_auto_escalate boolean not null
);
grant all    on reseller."Reseller" to aoadmin;
grant select on reseller."Reseller" to aoserv_app;
