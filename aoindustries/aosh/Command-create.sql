create table aosh."Command" (
  command name
    not null,
  "table" integer,
  "sinceVersion" text
    not null,
  "lastVersion" text,
  description text
    not null,
  syntax text
    not null
);

comment on column aosh."Command".command is 'the unique command within a single protocol version';

grant all    on aosh."Command" to aoadmin;
grant select on aosh."Command" to aoserv_app;
