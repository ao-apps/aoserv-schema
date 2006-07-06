create sequence ticket_pkey_seq cycle;   
grant all on ticket_pkey_seq to aoadmin;
grant select, update on ticket_pkey_seq to aoserv_app;

create table tickets (
  pkey              integer     default nextval('ticket_pkey_seq')
                                constraint tickets_pkey primary key,
  accounting        text,
  created_by        text,
  ticket_type       text        not null,
  details           text        not null,
  open_date         timestamp   not null,
  deadline          timestamp,
  close_date        timestamp,
  closed_by         text,
  client_priority   text        not null,
  admin_priority    text,
  
  technology        text,
  status            text        not null,
  assigned_to text,
  contact_emails text not null,
  contact_phone_numbers text not null
);
grant all on tickets to aoadmin;
grant select, insert, update on tickets to aoserv_app;
