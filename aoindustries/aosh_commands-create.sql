create table aosh_commands (
  command text
    not null,
  table_name text,
  short_desc text
    not null,
  syntax text
    not null,
  since_version text
    not null,
  last_version text
);
grant all on aosh_commands to aoadmin;
grant select on aosh_commands to aoserv_app;
