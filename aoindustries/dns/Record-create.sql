create sequence         dns."Record_pkey_seq" cycle;
grant all            on dns."Record_pkey_seq" to aoadmin;
grant select, update on dns."Record_pkey_seq" to aoserv_app;

create table dns."Record" (
  pkey          integer
    default nextval('dns."Record_pkey_seq"')
    primary key,
  "zone"        text not null,
  "domain"      text not null,
  "type"        text not null,
  priority      integer,
  weight        integer,
  port          integer
    check (port is null or port between 1 and 65535),
  destination   text not null,
  "dhcpAddress" integer,
  ttl           integer,
  unique("zone", "domain", "type", destination)
);
grant all                            on dns."Record" to aoadmin;
grant select, insert, update, delete on dns."Record" to aoserv_app;
