create table us_states (
  code char(2)
    constraint us_states_pkey primary key,
  name text
    not null
);
grant all on us_states to aoadmin;
grant select on us_states to aoserv_app;
