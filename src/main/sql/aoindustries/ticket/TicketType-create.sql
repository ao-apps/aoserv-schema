-- TODO: Should this be an enum in both PostgreSQL and Java?
-- TODO: How to handle newer versions for older clients, enum value "UNKNOWN" or nullable?
-- TODO: If doing this, set priority should take old priority, with server rejecting, so old clients can't override new enum values?
create table ticket."TicketType" (
  "type" text primary key
);
grant all    on ticket."TicketType" to aoadmin;
grant select on ticket."TicketType" to aoserv_app;
