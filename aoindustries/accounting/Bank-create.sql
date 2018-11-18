create table accounting."Bank" (
  "name" text
    primary key,
  display text
    not null
);
grant all    on accounting."Bank" to aoadmin;
grant select on accounting."Bank" to aoserv_app;
