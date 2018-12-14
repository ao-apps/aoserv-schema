create sequence         email."SystemAlias_id_seq" cycle;
grant all            on email."SystemAlias_id_seq" to aoadmin;
grant select         on email."SystemAlias_id_seq" to aoserv_app;
grant select, update on email."SystemAlias_id_seq" to management;

create table email."SystemAlias" (
  id integer
    default nextval('email."SystemAlias_id_seq"')
    primary key,
  ao_server integer
    not null,
  address text
    not null,
  destination text
    not null,
  unique (ao_server, address)
);
grant all    on email."SystemAlias" to aoadmin;
grant select on email."SystemAlias" to aoserv_app;
grant insert on email."SystemAlias" to management;
