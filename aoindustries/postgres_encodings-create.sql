create sequence postgres_encodings_pkey_seq cycle;
grant all on postgres_encodings_pkey_seq to aoadmin;
grant select, update on postgres_encodings_pkey_seq to aoserv_app;

create table postgres_encodings (
  pkey integer
    default nextval('postgres_encodings_pkey_seq')
    constraint postgres_encodings_pkey primary key,
  encoding text
    not null,
  postgres_version integer
    not null,
  unique(encoding, postgres_version)
);
grant all on postgres_encodings to aoadmin;
grant select on postgres_encodings to aoserv_app;
