create table aosh."Command" (
  command name
    not null,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  "table" integer,
  description text
    not null,
  syntax text
    not null,
  unique("sinceVersion", command)
);

comment on column aosh."Command".command is 'the unique command within a single protocol version';

grant all    on aosh."Command" to aoadmin;
grant select on aosh."Command" to aoserv_app;
