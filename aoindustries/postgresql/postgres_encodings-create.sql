create sequence         postgresql.postgres_encodings_pkey_seq cycle;
grant all            on postgresql.postgres_encodings_pkey_seq to aoadmin;
grant select, update on postgresql.postgres_encodings_pkey_seq to aoserv_app;

create table postgres_encodings (
  pkey integer
    default nextval('postgresql.postgres_encodings_pkey_seq')
    primary key,
  encoding text
    not null,
  postgres_version integer
    not null,
  unique(encoding, postgres_version)
);
grant all            on postgres_encodings to aoadmin;
grant select, update on postgres_encodings to aoserv_app;
