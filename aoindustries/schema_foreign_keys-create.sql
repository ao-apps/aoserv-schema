create sequence schema_foreign_keys_pkey_seq cycle;
grant all on schema_foreign_keys_pkey_seq to aoadmin;
grant select on schema_foreign_keys_pkey_seq to aoserv_app;

create table schema_foreign_keys (
  pkey integer
    default nextval('schema_foreign_keys_pkey_seq')
    constraint schema_foreign_keys_pkey primary key,
  key_column integer
    not null,
  foreign_column integer
    not null,
  is_bridge bool
    not null,
  tied_bridge integer,
  since_version text
    not null,
  last_version text,
  unique(key_column, foreign_column)
);
grant all on schema_foreign_keys to aoadmin;
grant select on schema_foreign_keys to aoserv_app;
