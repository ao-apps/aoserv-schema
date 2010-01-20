create table notice_types (
  type text primary key
);
grant all on notice_types to aoadmin;
grant select on notice_types to aoserv_app;
