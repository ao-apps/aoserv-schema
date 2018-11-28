create sequence         dns."Record_id_seq" cycle;
grant all            on dns."Record_id_seq" to aoadmin;
grant select, update on dns."Record_id_seq" to aoserv_app;

create table dns."Record" (
  id integer
    default nextval('dns."Record_id_seq"')
    primary key,
  "zone" text not null,
  "domain" text not null,
  "type" text not null,
  priority integer,
  weight integer,
  port net."Port",
  destination text not null,
  "dhcpAddress" integer,
  ttl integer,
  unique("zone", "domain", "type", destination)
);
grant all                            on dns."Record" to aoadmin;
grant select, insert, update, delete on dns."Record" to aoserv_app;
grant select                         on dns."Record" to management;
