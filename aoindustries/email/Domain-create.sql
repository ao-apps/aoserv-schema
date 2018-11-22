create sequence         email."Domain_pkey_seq" cycle;
grant all            on email."Domain_pkey_seq" to aoadmin;
grant select, update on email."Domain_pkey_seq" to aoserv_app;

create table email."Domain" (
  pkey integer
    default nextval('email."Domain_pkey_seq"')
    primary key,
  "domain" text
    not null,
  check ("domain"=lower(trim("domain"))),
  ao_server integer
    not null,
  package text
    not null,
  unique(ao_server, "domain")
);
grant all                            on email."Domain" to aoadmin;
grant select, insert, update, delete on email."Domain" to aoserv_app;
