create table ticket_stati (
  status       text       not null
                          constraint ticket_stati_pkey primary key,
  description  text       not null
);
grant all on ticket_stati to aoadmin;
grant select, update on ticket_stati to aoserv_app;
