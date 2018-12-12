create sequence         email."Domain_id_seq" cycle;
grant all            on email."Domain_id_seq" to aoadmin;
grant select, update on email."Domain_id_seq" to aoserv_app;

create table email."Domain" (
  id integer
    default nextval('email."Domain_id_seq"')
    primary key,
  "domain" "com.aoindustries.net"."DomainName"
    not null,
    check ("domain"::text = lower("domain"::text)),
  ao_server integer
    not null,
  package text
    not null,
  unique(ao_server, "domain")
);
grant all                            on email."Domain" to aoadmin;
grant select, insert, update, delete on email."Domain" to aoserv_app;
