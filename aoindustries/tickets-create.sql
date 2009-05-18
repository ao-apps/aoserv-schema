create table tickets (
  pkey integer primary key,
  reseller text not null, -- The currently allocated reseller (escalataion level) - should never be allocated to a auto-escelate reseller - how to enforce in PostgreSQL?
  accounting text, -- The accounting code that submitted the ticket, if available
  language text not null,
  created_by text, -- The business_administrator who created the ticket, if available
  category integer, -- An optional category
  ticket_type text not null,
  from_address text, -- The from email address, if submitted by email
  summary text not null, -- From email subject
  details text, -- Directly submitted or converted from email, cannot be changed
  raw_email text, -- Only available when submitted via email
  open_date timestamp not null,
  client_priority text not null,
  admin_priority text,
  status text not null,
  status_timeout timestamp, -- Will change back to "open" at this time
  contact_emails text not null, -- Comma/space-separated, populated to include cc
  contact_phone_numbers text not null, -- Comma-separated
  internal_notes text not null, -- May be modified, filtered from client
  -- Enforce status/status_timeout consistency
  check (
    case
        when status in ('junk', 'deleted', 'closed', 'open') then (status_timeout is null)
        else (status_timeout is not null)
    end
  ),
  -- Enforce time consistency
  check (status_timeout is null or status_timeout>=open_date)
);
grant all on tickets to aoadmin;
grant select, insert, update, delete on tickets to aoserv_app;
