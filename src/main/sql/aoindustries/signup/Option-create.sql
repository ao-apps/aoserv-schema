create sequence         signup."Option_id_seq" cycle;
grant all            on signup."Option_id_seq" to aoadmin;
grant select, update on signup."Option_id_seq" to aoserv_app;

create table signup."Option" (
  id integer
    default nextval('signup."Option_id_seq"')
    primary key,
  request integer
    not null,
  "name" text
    not null,
  value text,
  unique(request, "name")
);
grant all                    on signup."Option" to aoadmin;
grant select, insert, delete on signup."Option" to aoserv_app;
