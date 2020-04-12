create sequence postgresql."Encoding_id_seq" cycle;
grant all    on postgresql."Encoding_id_seq" to aoadmin;
grant select on postgresql."Encoding_id_seq" to aoserv_app;

create table postgresql."Encoding" (
  id integer
    default nextval('postgresql."Encoding_id_seq"')
    primary key,
  encoding text
    not null,
  postgres_version integer
    not null,
  unique(encoding, postgres_version)
);
grant all    on postgresql."Encoding" to aoadmin;
grant select on postgresql."Encoding" to aoserv_app;
grant select on postgresql."Encoding" to management;
