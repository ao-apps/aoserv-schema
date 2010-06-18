create table tickets (
  ticket_id integer primary key,
  brand text not null, -- The brand that the ticket originated from
  reseller text not null, -- The currently allocated reseller (escalataion level)
  ticket_auto_escalate bool not null check (not ticket_auto_escalate), -- Hidden reference to resellers only
  accounting text, -- The accounting code that submitted the ticket, if available
  "language" text not null,
  created_by text not null, -- The business_administrator who created the ticket
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
  contact_emails text not null, -- Populated to include cc
  contact_phone_numbers text not null,
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
