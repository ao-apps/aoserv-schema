create table ticket_types (
  type          text       not null
                           constraint ticket_types_pkey primary key,
  description   text       not null,
  client_view   bool       not null
);
grant all on ticket_types to aoadmin;
grant select, update on ticket_types to aoserv_app;
