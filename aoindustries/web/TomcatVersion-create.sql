create table web."TomcatVersion" (
  version integer
    primary key,
  install_dir text
    not null,
  requires_mod_jk boolean
    not null
);
grant all    on web."TomcatVersion" to aoadmin;
grant select on web."TomcatVersion" to aoserv_app;
