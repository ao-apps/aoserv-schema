-- TODO: Move to tickets schema
create table languages (
  code text primary key
);
grant all    on languages to aoadmin;
grant select on languages to aoserv_app;
