create sequence         email."Forwarding_id_seq" cycle;
grant all            on email."Forwarding_id_seq" to aoadmin;
grant select, update on email."Forwarding_id_seq" to aoserv_app;

create table email."Forwarding" (
  id integer
    default nextval('email."Forwarding_id_seq"')
    primary key,
  email_address integer
    not null,
  destination "com.aoindustries.net"."Email"
    not null,
  unique(email_address, destination)
);
grant all                            on email."Forwarding" to aoadmin;
grant select, insert, update, delete on email."Forwarding" to aoserv_app;
