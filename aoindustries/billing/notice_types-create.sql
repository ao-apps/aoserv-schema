create table notice_types (
  "type" text
    primary key,
  description text
    not null
);
grant all            on notice_types to aoadmin;
grant select, update on notice_types to aoserv_app;
