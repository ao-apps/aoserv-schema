create table aoserv_protocols (
  version text
    not null
    constraint aoserv_protocols_pkey primary key,
  created date
    not null,
  comments text
    not null,
  last_used date
);
grant all on aoserv_protocols to aoadmin;
grant select on aoserv_protocols to aoserv_app;
