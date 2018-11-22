create sequence email."SystemAlias_pkey_seq" cycle;
grant all    on email."SystemAlias_pkey_seq" to aoadmin;
grant select on email."SystemAlias_pkey_seq" to aoserv_app;

-- create table email."SystemAlias" (
  pkey integer
    default nextval('email."SystemAlias_pkey_seq"')
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
