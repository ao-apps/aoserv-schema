create table notice_types (
  type text
    constraint notice_types_pkey primary key,
  description text
    not null
);
grant all on notice_types to aoadmin;
grant select on notice_types to aoserv_app;
