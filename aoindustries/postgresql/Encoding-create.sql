create sequence postgresql."Encoding_pkey_seq" cycle;
grant all    on postgresql."Encoding_pkey_seq" to aoadmin;
grant select on postgresql."Encoding_pkey_seq" to aoserv_app;

create table postgresql."Encoding" (
  pkey integer
    default nextval('postgresql."Encoding_pkey_seq"')
    primary key,
  encoding text
    not null,
  postgres_version integer
    not null,
  unique(encoding, postgres_version)
);
grant all    on postgresql."Encoding" to aoadmin;
grant select on postgresql."Encoding" to aoserv_app;
