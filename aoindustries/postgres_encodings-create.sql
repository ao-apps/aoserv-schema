create table postgres_encodings (
  pkey integer primary key,
  encoding text not null,
  postgres_version integer not null,
  unique(encoding, postgres_version)
);
grant all on postgres_encodings to aoadmin;
grant select on postgres_encodings to aoserv_app;
